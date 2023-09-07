//
//  OrganizationView.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI
import Alamofire
let orgUrl = ".../selected-suborganizations"
struct OrganizationView: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var btnBack : some View { Button(action: {
//            self.presentationMode.wrappedValue.dismiss()
//            }) {
//               // HStack {
//                Image(systemName: "arrowshape.backward.fill") // set image here
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.green)
//
//                //}
//            }
//        }
    @State var items: [OrganizationPostModel] = []
    var body: some View {
                ScrollView {
                    ForEach(items, id: \.dcode){ item in
                       HStack {
                            NavigationLink(destination: OrganizationDetails(dName: item.dcode), label: {
                                Text(item.dname!).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                            })
        
                        }.frame(width: 330).padding().background(Color(hex: 0xfffcdd)).cornerRadius(20)
                    }
                }.onAppear{
                    let decoder: JSONDecoder = {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                      return decoder
                    }()
        
                    AF.request(orgUrl, method: .post, parameters: ["Email": "masrafianam@gmail.com"] ).validate(statusCode: 200..<300)
                        .responseString(completionHandler: {
                            str in
                            print("str: ", str)
                        })
                        .responseDecodable(of: [OrganizationPostModel].self, decoder: decoder) {
                            response in
                            switch response.result {
                            case.success(let items):
                                print("itemd: ", items)
                                self.items = items
                            case.failure(let error):
                                print("Error: ", error.localizedDescription)
                            }
                        }
                }
//                .navigationBarBackButtonHidden(true)
//                    .navigationBarItems(leading: btnBack)
    }
}


struct OrganizationView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationView()
    }
}
struct OrganizationPostModel: Decodable {
    var deptid : String? = "View Image"
    var dcode : String? = "View Image"
    var dname : String? = "View Image"
    var GH3 : String? = "View Image"
    var GH2 : String? = "View Image"
    var GH1 : String? = "View Image"
    var URL : String? = "View Image"
    var title : String? = "View Image"
    var titleHTwo : String? = "View Image"
    var meta_description : String? = "View Image"
    var keyword : String? = "View Image"
    var image : String? = "View Image"
    
}
