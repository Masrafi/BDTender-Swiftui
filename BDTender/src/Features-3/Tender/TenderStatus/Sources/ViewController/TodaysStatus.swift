//
//  TodaysStatus.swift
//  BDTender
//
//  Created by user on 3/23/23.
//

import SwiftUI
import Alamofire


struct TodaysStatus: View {
    var responseString: String = ""
    //@State var items: [TodaysResponse] = []
    var body: some View {
        HStack{
            VStack{
                Image("nameOne").resizable().frame(width: 30, height: 40)
            }
            VStack{
                Text("Today's").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                Text("325").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
            }
        }.onAppear{
            
           
            var request = URLRequest(url: URL(string: ".../count-corrigendum-tender")!,timeoutInterval: Double.infinity)
            request.httpMethod = "GET"
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    print("Corrigendum Tender")
                    print(String(describing: error))
                    return
                }
                print("Corrigendum Tender Status")
                print(String(data: data, encoding: .utf8)!)
                
               
            }
            
            task.resume()
        }
    }
}

struct TodaysStatus_Previews: PreviewProvider {
    static var previews: some View {
        TodaysStatus()
    }
}

