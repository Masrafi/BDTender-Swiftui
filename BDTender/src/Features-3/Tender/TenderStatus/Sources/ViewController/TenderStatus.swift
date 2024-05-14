//
//  TenderStatus.swift
//  BDTender
//
//  Created by user on 3/23/23.
//

import SwiftUI
import Alamofire
import Foundation

struct TenderStatus: View {
    @State var corrun: [Corrun] = []
    @State var live: [Live] = []
    @State var privateT: [Private] = []
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    
                    TodaysStatus()
                
                    Spacer().frame(maxWidth: 100)
                    HStack{
                        VStack{
                            Image("nameOne").resizable().frame(width: 30, height: 40)
                        }
                        NavigationLink(destination: CorrugendumTendesDetails()) {
                            VStack{
                                Text("Corrugendam").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                                Text(String(corrun.first?.message ?? "00") ).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                            }
                        }
                    }
                }
                Group {
                    Spacer().frame(maxHeight: 20)
                    HStack{
                        HStack{
                            VStack{
                                Image("nameOne").resizable().frame(width: 30, height: 40)
                            }
                            NavigationLink(destination: LiveTendesDetails()) {
                                VStack{
                                    Text("Live").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                                    Text(String(live.first?.message ?? 00)).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                                }
                            }
                        }
                        Spacer().frame(maxWidth: 100)
                        HStack{
                            VStack{
                                Image("nameOne").resizable().frame(width: 30, height: 40)
                            }
                            NavigationLink(destination: PrivateTendesDetails()) {
                                VStack{
                                    Text("Private").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                                    Text(privateT.first?.message ?? "00").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                                }
                            }
                        }
                    }
                }
                
            }
        }.onAppear{
            let decoder: JSONDecoder = {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                return decoder
            }()
            
            AF.request(APIConfig.corrugendumCountURL, method: .get ).validate(statusCode: 200..<300)
                .responseString(completionHandler: {
                    str in
                    print("str: ", str)
                })
                .responseDecodable(of: [Corrun].self, decoder: decoder) {
                    response in
                    switch response.result {
                    case.success(let items):
                        print("itemd: ", items.first?.message ?? "Not found")
                        self.corrun = items
                    case.failure(let error):
                        print("Error: ", error.localizedDescription)
                    }
                }
            
            AF.request(APIConfig.privateCountURL, method: .get ).validate(statusCode: 200..<300)
                .responseString(completionHandler: {
                    str in
                    print("str: ", str)
                })
                .responseDecodable(of: [Private].self, decoder: decoder) {
                    response in
                    switch response.result {
                    case.success(let items):
                        print("itemd: ", items.first?.message ?? "Not found")
                        self.privateT = items
                    case.failure(let error):
                        print("Error: ", error.localizedDescription)
                    }
                }
            
            AF.request(APIConfig.liveCountURL, method: .get ).validate(statusCode: 200..<300)
                .responseString(completionHandler: {
                    str in
                    print("str: ", str)
                })
                .responseDecodable(of: [Live].self, decoder: decoder) {
                    response in
                    switch response.result {
                    case.success(let items):
                        print("itemd: ", items.first?.message ?? "Not found")
                        self.live = items
                    case.failure(let error):
                        print("Error: ", error.localizedDescription)
                    }
                }
            
        }
    }
}

struct TenderStatus_Previews: PreviewProvider {
    static var previews: some View {
        TenderStatus()
    }
}


struct Corrun : Codable {
    var message : String? = "12"
}
struct Live : Codable {
    var message : Int? = 12
}
struct Private : Codable {
    var message : String? = "12"
}
