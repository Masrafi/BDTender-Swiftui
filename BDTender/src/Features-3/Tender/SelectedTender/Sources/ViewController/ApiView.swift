////
////  ApiView.swift
////  BDTender
////
////  Created by user on 3/22/23.
////
//
//import SwiftUI
//import Alamofire
//import SwiftyJSON
//struct LoginResponse : Codable {
//
//    var workdesc : String? = "View Image"
//    var tendercode : String? = "View Image"
//    var TenderContentType : String? = "View Image"
//    var issudate : String? = "View Image"
//    var distname : String? = "View Image"
//    var tendersource : String? = "View Image"
//    var sectorcode : String? = "View Image"
//    var ernestamt : String? = "View Image"
//    var seduleprice : String? = "View Image"
//    var tpurchesdate : String? = "View Image"
//    var PrebidMeetingDate : String? = "View Image"
//    var tsubmissiondate : String? = "View Image"
//    var tboxopendate : String? = "View Image"
//    var visitors : String? = "View Image"
//
//}
//
//
//    struct ApiView: View {
//        @State var items: [LoginResponse] = []
//        var body: some View {
//            ScrollView {
//                ForEach(items, id: \.sectorcode) {
//                    item in
//                    TenderUI(title: item.workdesc ?? "View Image", tenderID: item.tendercode ?? "View Image", contentType: item.TenderContentType ?? "View Image", publishedOn: item.issudate ?? "View Image", location: item.distname ?? "View Image", source: item.tendersource ?? "View Image", earMoney: item.sectorcode ?? "View Image", docPrice: item.ernestamt ?? "View Image", purLastDate: item.seduleprice ?? "View Image", preMetDate: item.tpurchesdate ?? "View Image", subDate: item.PrebidMeetingDate ?? "View Image", openingDate: item.tsubmissiondate ?? "View Image", visitors: item.tboxopendate ?? "View Image", viewImage: item.visitors ?? "View Image")
//                }
//            }.onAppear{
//
//                let decoder: JSONDecoder = {
//                    let decoder = JSONDecoder()
//                    decoder.keyDecodingStrategy = .convertFromSnakeCase
//                    return decoder
//                }()
//
//                AF.request("https://www.bdtender.com/api/my-profile", method: .post, parameters: ["Email": "masrafianam@gmail.com"] ).validate(statusCode: 200..<300)
//                    .responseString(completionHandler: {
//                    str in
//                    print("str: ", str)
//                })
//                    .responseDecodable(of: [LoginResponse].self, decoder: decoder) {
//                    response in
//                    switch response.result {
//                    case.success(let items):
//                        print("itemd: ", items)
//                        self.items = items
//                    case.failure(let error):
//                        print("Error: ", error.localizedDescription)
//                    }
//                }
//            }
//        }
//    }
//
//
//struct ApiView_Previews: PreviewProvider {
//    static var previews: some View {
//        ApiView()
//    }
//}
