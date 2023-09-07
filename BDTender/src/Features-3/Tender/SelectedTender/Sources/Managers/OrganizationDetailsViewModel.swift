//
//  OrganizationDetailsViewModel.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import Foundation
let orgDetUrl = ".../selected-suborganizations-tender"

class OrganizationDetailsViewModel : ObservableObject {
    @Published var organizationDetailsData = [OrganizationDetailsPostModel]()
    func postData (dName: String) {
        guard let url = URL(string: orgDetUrl) else {return}
//        let title = "foo"
//        let bar = "foo"
//        let userID = 1
        let body: [String: Any] = [ "dName": dName]
        let finalData = try! JSONSerialization.data(withJSONObject: body)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
    request.httpBody = finalData
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    URLSession.shared.dataTask(with: request) {(data, res, err) in
        do{
            if let data = data {
                let result = try JSONDecoder().decode([OrganizationDetailsPostModel].self, from: data)
                print(result)
                DispatchQueue.main.async {
                    self.organizationDetailsData = result
                }
               
            }else {
                print("No Data")
            }
        } catch (let error) {
            print(error.localizedDescription)
        }
    }.resume()
}
}
