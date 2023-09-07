//
//  RegistrationScreen.swift
//  BDTender
//
//  Created by user on 3/18/23.
//

import SwiftUI

struct RegistrationScreen: View {
    @State var search: String = ""

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Image("pencil").resizable().frame(width: 20, height: 30)
                    Spacer().frame(maxWidth: 5)
                    Text("Registration").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 30)).fontWeight(.bold)
                    
                }
                
                TextFieldView(image: UIImage(imageLiteralResourceName: "nameOne"), search: search, title: "Enter here", hedar: "Name")
                
                TextFieldView(image: UIImage(imageLiteralResourceName: "nameTwo"), search: search, title: "Enter here", hedar: "Designation")
                
                TextFieldView(image: UIImage(imageLiteralResourceName: "organization"), search: search, title: "Enter here", hedar: "Organization")
                
                TextFieldView(image: UIImage(imageLiteralResourceName: "phone"), search: search, title: "Enter here", hedar: "Mobile Number")
                TextFieldView(image: UIImage(imageLiteralResourceName: "passIcon"), search: search, title: "Enter here", hedar: "Email")
                TextFieldView(image: UIImage(imageLiteralResourceName: "eIcon"), search: search, title: "Enter here", hedar: "Password")
                
                
            }.padding()
        }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}

