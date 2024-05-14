//
//  LoginUI.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct LoginUI: View {
    @Binding var email: String
    @Binding var password: String
    var body: some View {
        HStack{
            VStack (alignment:.leading, spacing: 0){
                Group {
                    HStack{
                        Image("pencil").resizable().frame(width: 20, height: 30)
                        Spacer().frame(maxWidth: 5)
                        Text("Login").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 30)).fontWeight(.bold)
                    }
                }
                Spacer().frame(maxHeight: 50)
                HStack{
                    Image("eIcon").resizable().frame(width: 25, height: 30)
                    Spacer().frame(maxWidth: 10)
                    TextField("Email", text: $email)
                }
                Group{
                    Spacer().frame(maxHeight: 10)
                    Divider()
                        .frame(height: 1.5)
                        .padding(.horizontal, 30)
                        .background(Color.black)
                }
                
                Spacer().frame(maxHeight: 35)
                HStack{
                    Image("passIcon").resizable().frame(width: 25, height: 30)
                    Spacer().frame(maxWidth: 10)
                    TextField("Password`", text: $password)
                }
                
                Group {
                    Spacer().frame(maxHeight: 10)
                    Divider()
                        .frame(height: 1.5)
                        .padding(.horizontal, 30)
                        .background(Color.black)
                    Spacer().frame(maxHeight: 40)
                }
                HStack {
                    Spacer()
                    Text("Forgot Password").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                }
                
                
            }.padding()
            
        }.frame(width: 300).padding().background(Color.white).cornerRadius(20)
    }
}

struct LoginUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginUI(email: .constant(""), password: .constant(""))
    }
}
