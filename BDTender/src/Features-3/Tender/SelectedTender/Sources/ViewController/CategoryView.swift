//
//  CategoryView.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI
import Alamofire

let catUrl = ".../selected-subcategories"
struct CategoryView: View {
    @State var items: [CategoryPostModel] = []
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
    var body: some View {
        
                Spacer().frame(maxHeight: 50)
                //AppView(title: "Category")
                ScrollView {
                    ForEach(items, id: \.catcode){ item in
                        HStack {
                            
                            NavigationLink(destination: CategoryDetails(catcode: item.catcode), label: {
                                Text(item.catname!).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                            })
                        }.frame(width: 330).padding().background(Color(hex: 0xfffcdd)).cornerRadius(20)
                        
                    }
                    
                }
           .onAppear{
            let decoder: JSONDecoder = {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                return decoder
            }()
            
            AF.request(catUrl, method: .post, parameters: ["Email": "masrafianam@gmail.com"] ).validate(statusCode: 200..<300)
                .responseString(completionHandler: {
                    str in
                    print("str: ", str)
                })
                .responseDecodable(of: [CategoryPostModel].self, decoder: decoder) {
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
//           .navigationBarBackButtonHidden(true)
//            .navigationBarItems(leading: btnBack)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}

struct CategoryPostModel: Decodable {
    var id : String? = "View Image"
    var catcode : String? = "View Image"
    var catname : String? = "View Image"
    var GroupHead : String? = "View Image"
    var URL : String? = "View Image"
    var keyword : String? = "View Image"
    var title : String? = "View Image"
    var titleHTwo : String? = "View Image"
    var meta_description : String? = "View Image"
    var sl : String? = "View Image"
    var subscriber_id : String? = "View Image"
    
}
