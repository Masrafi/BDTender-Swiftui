//
//  CategoryDetails.swift
//  BDTender
//
//  Created by user on 3/25/23.
//

import SwiftUI

struct CategoryDetails: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
               // HStack {
                Image(systemName: "arrowshape.backward.fill") // set image here
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.green)
                    
                //}
            }
        }
    @ObservedObject var viewModelCatDetails = CategoryDetailsViewJSON()
    var catcode : String?
    var body: some View {
        ScrollView {
            ForEach(viewModelCatDetails.categoryDetailsData, id: \.workdesc){ item in
                TenderUI(title: item.workdesc ?? "View Image", tenderID: item.tendercode ?? "View Image", contentType: item.TenderContentType ?? "View Image", publishedOn: item.issudate ?? "View Image", location: item.distname ?? "View Image", source: item.tendersource ?? "View Image", earMoney: item.sectorcode ?? "View Image", docPrice: item.ernestamt ?? "View Image", purLastDate: item.seduleprice ?? "View Image", preMetDate: item.tpurchesdate ?? "View Image", subDate: item.PrebidMeetingDate ?? "View Image", openingDate: item.tsubmissiondate ?? "View Image", visitors: item.tboxopendate ?? "View Image", viewImage: item.visitors ?? "View Image")
            }
        }.onAppear {
            print("THis is masrafi: ", catcode!)
            viewModelCatDetails.postData(catcode: catcode!)
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
    }
}

struct CategoryDetails_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetails()
    }
}
