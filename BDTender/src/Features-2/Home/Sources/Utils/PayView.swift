//
//  PayView.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct PayView:  View{
    
    var body: some View{
        Group {
            TenderStatus()
            Spacer().frame(maxHeight: 20)
            HStack {
                Image("payIcon").resizable().frame(width: 35, height: 35)
                Text("Pay Now").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                Spacer()
                Image("forward").resizable().foregroundColor(Color.green).frame(width: 30, height: 25)
                
            }.frame(width: 330, height: 35).padding().background(Color.white).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 0)
        }
    }
}

struct PayView_Previews: PreviewProvider {
    static var previews: some View {
        PayView()
    }
}
