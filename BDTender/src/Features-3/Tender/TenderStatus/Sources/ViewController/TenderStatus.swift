//
//  TenderStatus.swift
//  BDTender
//
//  Created by user on 3/23/23.
//

import SwiftUI

struct TenderStatus: View {
    var body: some View {
        HStack{
            TodaysStatus()
            Spacer().frame(maxWidth: 100)
            HStack{
                VStack{
                    Image("nameOne").resizable().frame(width: 30, height: 40)
                }
                VStack{
                    Text("Today's").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                    Text("325").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                }
            }
        }
        
       
        
        Group {
            Spacer().frame(maxHeight: 20)
            HStack{
                HStack{
                    VStack{
                        Image("nameOne").resizable().frame(width: 30, height: 40)
                    }
                    VStack{
                        Text("Today's").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                        Text("325").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                    }
                }
                Spacer().frame(maxWidth: 100)
                HStack{
                    VStack{
                        Image("nameOne").resizable().frame(width: 30, height: 40)
                    }
                    VStack{
                        Text("Today's").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                        Text("325").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 15)).fontWeight(.bold)
                    }
                }
            }
        }
    }
}

struct TenderStatus_Previews: PreviewProvider {
    static var previews: some View {
        TenderStatus()
    }
}

