//
//  OrganizationDetails.swift
//  BDTender
//
//  Created by user on 3/25/23.
//

import SwiftUI

struct OrganizationDetails: View {
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
    @ObservedObject var viewModelDetails = OrganizationDetailsViewModel()
    var dName : String?
    var body: some View {
        //ZStack {
            ScrollView {
                ForEach(viewModelDetails.organizationDetailsData, id: \.workdesc){ item in
                    TenderUI(title: item.workdesc ?? "View Image", tenderID: item.tendercode ?? "View Image", contentType: item.TenderContentType ?? "View Image", publishedOn: item.issudate ?? "View Image", location: item.distname ?? "View Image", source: item.tendersource ?? "View Image", earMoney: item.sectorcode ?? "View Image", docPrice: item.ernestamt ?? "View Image", purLastDate: item.seduleprice ?? "View Image", preMetDate: item.tpurchesdate ?? "View Image", subDate: item.PrebidMeetingDate ?? "View Image", openingDate: item.tsubmissiondate ?? "View Image", visitors: item.tboxopendate ?? "View Image", viewImage: item.visitors ?? "View Image")
                }
            }.onAppear {
                print("THis is masrafi: ", dName!)
                viewModelDetails.postData(dName: dName!)
            }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
        //}
    }
}

struct OrganizationDetails_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationDetails()
    }
}


