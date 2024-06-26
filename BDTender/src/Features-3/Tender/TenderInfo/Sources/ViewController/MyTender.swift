//
//  MyTender.swift
//  BDTender
//
//  Created by user on 3/20/23.
//

import SwiftUI
import Alamofire
import SwiftyJSON


struct MyTender: View {
    @AppStorage("savedEmail") var savedEmail: String = ""
    @State var items: [MyTenderResponse] = []
    @State private var isLoading = false
    var body: some View {
        ScrollView {
            ForEach(items, id: \.sectorcode) {
                item in
                TenderUI(title: item.workdesc ?? "View Image", tenderID: item.tendercode ?? "View Image", contentType: item.TenderContentType ?? "View Image", publishedOn: item.issudate ?? "View Image", location: item.distname ?? "View Image", source: item.tendersource ?? "View Image", earMoney: item.sectorcode ?? "View Image", docPrice: item.ernestamt ?? "View Image", purLastDate: item.seduleprice ?? "View Image", preMetDate: item.tpurchesdate ?? "View Image", subDate: item.PrebidMeetingDate ?? "View Image", openingDate: item.tsubmissiondate ?? "View Image", visitors: item.tboxopendate ?? "View Image", viewImage: item.visitors ?? "View Image")
            }
            if isLoading {
                ZStack {
                        ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .red)).scaleEffect(5)
                        //Spacer()
                    }.frame(maxWidth: 200, alignment: .center)
            }
        }.onAppear{
            isLoading = true
            let decoder: JSONDecoder = {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                return decoder
            }()
            
            AF.request(APIConfig.todaysURL, method: .post, parameters: ["Email": savedEmail] ).validate(statusCode: 200..<300)
                .responseString(completionHandler: {
                str in
                print("str: ", str)
            })
                .responseDecodable(of: [MyTenderResponse].self, decoder: decoder) {
                response in
                switch response.result {
                case.success(let items):
                    print("itemd: ", items)
                    self.items = items
                    isLoading = false
                case.failure(let error):
                    print("Error: ", error.localizedDescription)
                }
            }
        }
      
    }
    
}


struct MyTender_Previews: PreviewProvider {
    static var previews: some View {
        MyTender()
    }
}

