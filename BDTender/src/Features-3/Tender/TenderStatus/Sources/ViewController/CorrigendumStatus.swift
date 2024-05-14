//
//  CorrigendumStatus.swift
//  BDTender
//
//  Created by user on 3/23/23.
//

import SwiftUI

struct CorrigendumStatus: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).onAppear{
            print("Corrigendum Tender Status")
            var request = URLRequest(url: URL(string: "https://bdtender.com/api/count-corrigendum-tender")!,timeoutInterval: Double.infinity)
            request.httpMethod = "GET"

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
              guard let data = data else {
                print(String(describing: error))
                return
              }
                
              print(String(data: data, encoding: .utf8)!)
            }

            task.resume()

        }
    }
}

struct CorrigendumStatus_Previews: PreviewProvider {
    static var previews: some View {
        CorrigendumStatus()
    }
}

class CorrigendumCount : ObservableObject {
    @Published var organizationData = [OrganizationPostModel]()
func postData () {
    var request = URLRequest(url: URL(string: "https://www.bdtender.com/api/count-corrigendum-tender")!,timeoutInterval: Double.infinity)
    request.httpMethod = "GET"

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      guard let data = data else {
        print(String(describing: error))
        return
      }
      print(String(data: data, encoding: .utf8)!)
    }

    task.resume()

}
}
