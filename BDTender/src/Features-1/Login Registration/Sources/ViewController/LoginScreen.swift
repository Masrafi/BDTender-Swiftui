//
//  LoginScreen.swift
//  BDTender
//
//  Created by user on 3/18/23.
//

import SwiftUI
import Alamofire

struct LoginScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer().frame(maxHeight: 50)
                
                LoginUI(email: email, password: password)
                
                HStack{
                    Spacer()
                    Button(action: {
                        login(email: email, pass: password)
                    }, label: {
                        
                        NavigationLink(destination: NavBarView(), label: {
                            Text("Log In").font(.system(size: 22)).bold().frame(width: 150, height: 50).foregroundColor(.black).background(LinearGradient(colors: [.mint, .green], startPoint: .bottomLeading, endPoint: .topTrailing)).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)).shadow(radius: 3)
                        })
                        
                        
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
    
    struct LoginScreen_Previews: PreviewProvider {
        static var previews: some View {
            LoginScreen()
        }
    }
    
    func login (email: String, pass: String) {
        //isLoading = true
        let decoder: JSONDecoder = {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return decoder
        }()
        
        AF.request(".../login", method: .post, parameters: ["txtemail": email, "Password": pass] ).validate(statusCode: 200..<300)
            .responseString(completionHandler: {
                str in
                print("str: ", str)
            })
            .responseDecodable(of: [MyTenderResponse].self, decoder: decoder) {
                response in
                switch response.result {
                case.success(let items):
                    print("..............................................")
                    print("itemd: ", items)
                    //self.items = items
                    //isLoading = false
                case.failure(let error):
                    print("Error: ", error.localizedDescription)
                }
            }
    }
}


