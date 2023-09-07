//
//  SearchView.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct SearchView:  View{
    @State var search: String = ""
    var body: some View{
        VStack {
            Text("Find all your desired tenders").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
            HStack{
                Image("Search").padding(.trailing, 8)
                TextField("Search your tender...", text: $search)
            }.padding(.all, 20).background(Color.white).cornerRadius(10.0)
            Button(action: {}, label: {
                NavigationLink(destination: HomeScreen(), label: {
                    Text("Search").padding(.vertical, 10).padding(.horizontal, 10).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                })
            }).buttonStyle(.borderedProminent)
                .tint(.white)
        }.frame(width: 330, height: 200).padding().background(Color.green).cornerRadius(20)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
