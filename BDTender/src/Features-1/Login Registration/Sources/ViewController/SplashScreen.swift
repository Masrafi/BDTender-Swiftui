//
//  SplashScreen.swift
//  BDTender
//
//  Created by user on 3/17/23.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false

    var body: some View {
        ZStack {
                    if self.isActive {
                        InitialScreen()
                    } else {
//                        Rectangle()
//                            .background(Color.black)
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
    }
    }


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
