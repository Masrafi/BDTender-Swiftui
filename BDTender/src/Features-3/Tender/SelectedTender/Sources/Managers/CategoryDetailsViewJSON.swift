//
//  CategoryDetailsViewJSON.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import Foundation
let orgCatUrl = ".../selected-subcategories-tender"

class CategoryDetailsViewJSON : ObservableObject {
    @Published var categoryDetailsData = [CategoryDetailsModel]()
    func postData (catcode: String) {
        guard let url = URL(string: orgCatUrl) else {return}
//        let title = "foo"
//        let bar = "foo"
//        let userID = 1
        let body: [String: Any] = [ "Category": catcode]
        let finalData = try! JSONSerialization.data(withJSONObject: body)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
    request.httpBody = finalData
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    URLSession.shared.dataTask(with: request) {(data, res, err) in
        do{
            if let data = data {
                let result = try JSONDecoder().decode([CategoryDetailsModel].self, from: data)
                print(result)
                DispatchQueue.main.async {
                    self.categoryDetailsData = result
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
