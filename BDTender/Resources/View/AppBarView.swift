//
//  AppBarView.swift
//  Furniture_app
//
//  Created by user on 3/15/23.
//

import SwiftUI

struct AppView:  View{
    let title: String
    var body: some View{
        HStack {
            Text(title).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
        }.frame(width: 500, height: 20).padding().background(Color.green).cornerRadius(20)
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(title: "")
    }
}
