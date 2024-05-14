//
//  TodaysStatus.swift
//  BDTender
//
//  Created by user on 3/23/23.
//

import SwiftUI
import Alamofire


struct TodaysStatus: View {
    @State var today: [Today] = []
    var responseString: String = ""
    var body: some View {
        
        HStack{
            VStack{
                Image("nameOne").resizable().frame(width: 30, height: 40)
            }
            NavigationLink(destination: TodayTendesDetails()) {
                VStack{
                    Text("Today's").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                    Text(String(today.first?.message ?? 00)).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                }
            }}.onAppear{
            let decoder: JSONDecoder = {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                return decoder
            }()
            
                AF.request(APIConfig.todayCountURL, method: .get ).validate(statusCode: 200..<300)
                .responseString(completionHandler: {
                    str in
                    print("str: ", str)
                })
                .responseDecodable(of: [Today].self, decoder: decoder) {
                    response in
                    switch response.result {
                    case.success(let items):
                        print("itemd: ", items.first?.message ?? "Not found")
                        self.today = items
                    case.failure(let error):
                        print("Error: ", error.localizedDescription)
                    }
                }
        }
    }
}

struct TodaysStatus_Previews: PreviewProvider {
    static var previews: some View {
        TodaysStatus()
    }
}

struct Today : Codable {
    var message : Int? = 12
}
