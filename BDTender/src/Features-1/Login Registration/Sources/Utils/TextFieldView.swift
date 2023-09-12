//
//  TextFieldView.swift
//  BDTender
//
//  Created by user on 3/28/23.
//

import SwiftUI

struct TextFieldView:  View{
    var image: UIImage
    @State var search: String = ""
    var title: String = ""
    var hedar: String = ""
    var body: some View{
        VStack(alignment: .leading){
            Spacer().frame(maxHeight: 30)
            Text(hedar).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
            HStack{
                Image(uiImage: image).resizable().frame(width: 25, height: 30)
                Spacer().frame(maxWidth: 10)
                TextField(title, text: $search)
            }
            Group{
                Spacer().frame(maxHeight: 10)
                Divider()
                    .frame(height: 1.5)
                 .padding(.horizontal, 30)
                 .background(Color.black)
            }
        }

    }
}


struct TextFieldView_Previews: PreviewProvider {
    let image: UIImage
    static var previews: some View {
        TextFieldView(image: UIImage(imageLiteralResourceName: ""))
    }
}
