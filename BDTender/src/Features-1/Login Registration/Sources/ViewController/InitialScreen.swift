//
//  InitialScreen.swift
//  BDTender
//
//  Created by user on 3/17/23.
//

import SwiftUI

struct InitialScreen: View {
    @State private var isPresented = false
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false // Add this line

    var body: some View {
        if isLoggedIn{
            LoginScreen()
        }else{
            NavigationView {
                ZStack {
                    //Rectangle().background(Color.green)
                    Color.green.ignoresSafeArea()
                    InitialView()
                    
                }
            }
        }
    }
}

struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}

