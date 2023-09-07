//
//  District.swift
//  BDTender
//
//  Created by user on 3/22/23.
//

import SwiftUI

struct District: View {
    var body: some View {
        ZStack {
            VStack{
                AppView(title: "District")
                Spacer()
                Text("District")
                Spacer()
            }
        }
    }
}

struct District_Previews: PreviewProvider {
    static var previews: some View {
        District()
    }
}
