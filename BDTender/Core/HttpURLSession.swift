//
//  HttpURLSession.swift
//  BDTender
//
//  Created by user on 3/24/23.
//

import SwiftUI

struct HttpURLSession: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        ScrollView {
            ForEach(viewModel.iteams2, id: \.workdesc){ item in
                Text(item.workdesc ?? "View").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
            }
        }.onAppear{
//            viewModel.loadData()
//            viewModel.postData()
        }
    }
}

struct HttpURLSession_Previews: PreviewProvider {
    static var previews: some View {
        HttpURLSession()
    }
}
let getUrl = ".../count-todays-tender"
let postUrl = ".../my-profile"
struct Model: Decodable {
    let count: String
}

struct PostModel: Decodable {
    var workdesc : String? = "View Image"
    var tendercode : String? = "View Image"
    var TenderContentType : String? = "View Image"
    var issudate : String? = "View Image"
    var distname : String? = "View Image"
    var tendersource : String? = "View Image"
    var sectorcode : String? = "View Image"
    var ernestamt : String? = "View Image"
    var seduleprice : String? = "View Image"
    var tpurchesdate : String? = "View Image"
    var PrebidMeetingDate : String? = "View Image"
    var tsubmissiondate : String? = "View Image"
    var tboxopendate : String? = "View Image"
    var visitors : String? = "View Image"
}


class ViewModel : ObservableObject {
    @Published var iteams = [Model]()
    @Published var iteams2 = [PostModel]()
    
    func loadData() {
        guard let url = URL(string: getUrl) else {return}


        URLSession.shared.dataTask(with: url) {(data, res, err) in
            print(data)
            do{
                if let data = data {
                    let result = try JSONDecoder().decode([Model].self, from: data)
                    print(">.............................")
                    DispatchQueue.main.async {
                        self.iteams = result
                    }
                }else {
                    print("No Data")
                }
            } catch (let error) {
                print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
                print(error.localizedDescription)
            }
        }.resume()
    }
    func postData () {
            guard let url = URL(string: postUrl) else {return}
            let title = "foo"
            let bar = "foo"
            let userID = 1
            let body: [String: Any] = [ "Email": "masrafianam@gmail.com"]
            let finalData = try! JSONSerialization.data(withJSONObject: body)
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
        request.httpBody = finalData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: request) {(data, res, err) in
            print(data)
            do{
                if let data = data {
                    let result = try JSONDecoder().decode([PostModel].self, from: data)
                    print(result)
                    DispatchQueue.main.async {
                        self.iteams2 = result
                    }
                   
                }else {
                    print("No Data")
                }
            } catch (let error) {
                print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
                print(error.localizedDescription)
            }
        }.resume()
    }
}
