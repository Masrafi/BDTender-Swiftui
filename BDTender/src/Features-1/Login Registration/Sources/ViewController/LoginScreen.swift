//
//  LoginScreen.swift
//  BDTender
//
//  Created by user on 3/18/23.
//

import SwiftUI
import Alamofire
import Foundation

struct LoginScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false // Add this line
    @AppStorage("savedEmail") var savedEmail: String = "" // Add this line

    @State private var email: String = ""
    @State private var password: String = ""
    
    @State var items: [LoginResponse] = []
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        // HStack {
        Image(systemName: "arrowshape.backward.fill") // set image here
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.white)
        
        //}
    }
    }
    var body: some View {
        if isLoggedIn{
            NavBarView()
        }
        else {
            ZStack {
                Color.green.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer().frame(maxHeight: 50)
                    
                    LoginUI(email: $email, password: $password)
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            print(email)
                            print(password)
                            login(email: email, pass: password)
                        }, label: {
                            
                            // NavigationLink(destination: NavBarView(), label: {
                            Text("Log In").font(.system(size: 22)).bold().frame(width: 150, height: 50).foregroundColor(.black).background(LinearGradient(colors: [.mint, .green], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                            // })
                            
                            
                        })
                        
                    }.padding().padding()
                    
                    HStack {
                        
                        Text("Don't have an account?").foregroundColor(Color.black)
                        NavigationLink(destination: RegistrationScreen(), label: {
                            Text("Signup").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 25)).fontWeight(.bold)
                        })
                        
                    }.padding()
                    
                }.onAppear {
                    //isLoading = true
                    
                }.navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: btnBack)
            }
        }
    }
    

    
    func login (email: String, pass: String) {
        AF.request(APIConfig.loginURL, method: .post, parameters: ["txtemail": email, "Password": pass] ).validate(statusCode: 200..<300)
            .responseString(completionHandler: {
                str in
                print("str: ", str)
                switch str.result {
                case .success(let value):
                    if let data = value.data(using: .utf8) {
                        do {
                            let decoder = JSONDecoder()
                            let loginResponse = try decoder.decode(LoginResponse.self, from: data)
                            if let subscriberId = loginResponse.subscriberId {
                                print("Subscriber ID:", subscriberId)
                                isLoggedIn = true
                                savedEmail = email
                            }
                        } catch {
                            print("Error parsing JSON: \(error)")
                        }
                    }
                case .failure(let error):
                    print("Error:", error)
                }
            })
    }
}


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
struct LoginResponse: Codable {
    var message: String?
    var subscriberId: String?

    private enum CodingKeys: String, CodingKey {
        case message = "message"
        case subscriberId = "subscriber_id"
    }
}
