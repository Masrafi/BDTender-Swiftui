//
//  InitialView.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct InitialView: View {
    @State private var isPresented = false
    var body: some View {
        VStack {
            NavigationLink(destination: RegistrationScreen(), label: {
                Image("email").resizable().frame(width: 350, height: 50)
            }).navigationBarHidden(true).foregroundColor(.black)
            
            //Spacer()
            Image("gmail").resizable().frame(width: 350, height: 50)
            //Spacer()
            Image("fb").resizable().frame(width: 350, height: 50)
            Spacer().frame(maxHeight: 40)
            Text("OR").foregroundColor(Color.white).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
            Spacer().frame(maxHeight: 40)
            
            NavigationLink(destination: LoginScreen(), label: {
                Image("login").resizable().frame(width: 150, height: 50)
            })
            //.navigationBarHidden(true).foregroundColor(.black)
            
//                    Button(action: {
//
//                    }, label: {
//                        Image("login")
//                    Button(action: {
//                        self.isPresented.toggle()
//                    }, label: {
//                        Image("login").resizable().frame(width: 150, height: 60)
//                    }).fullScreenCover(isPresented: $isPresented, content: LoginScreen.init)
//                    })
        }.padding()
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
