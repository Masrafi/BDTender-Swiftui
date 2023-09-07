//
//  TenderUI.swift
//  BDTender
//
//  Created by user on 3/23/23.
//

import SwiftUI

struct TenderUI: View {
    let title: String
    let tenderID: String
    let contentType: String
    let publishedOn: String
    let location: String
    let source: String
    let earMoney: String
    let docPrice: String
    let purLastDate: String
    let preMetDate: String
    let subDate: String
    let openingDate: String
    let visitors: String
    let viewImage: String

    var body: some View {
        VStack (alignment: .leading) {
            Text(title).foregroundColor(Color.black).font(.system( size: 22)).fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
            Spacer().frame(maxHeight: 25)
            Group {
                HStack  {
                    Text("Tender ID:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    
                    Text(tenderID).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                    
                    
                }
                
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Content Type:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    
                    
                    //                        Spacer().frame(maxWidth: 30)
                    Text(contentType).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                    
                    
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Published on:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(publishedOn).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Location:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(location).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Source:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(source).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
            }
            
            Group {
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Ear. Money:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(earMoney).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Doc. Price:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(docPrice).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Pur. Last Date:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(purLastDate).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Pre. Met. Date:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(preMetDate).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Sub. date:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(subDate).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                
            }
            
            Group {
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Opening Date:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(openingDate).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                
            }
            Group{
                Spacer().frame(maxHeight: 5)
                HStack  {
                    Text("Visitors:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text(visitors).foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 16))
                }
                Spacer().frame(maxHeight: 5)
                
                HStack  {
                    Text("View Image:").foregroundColor(Color.black).font(.system(size: 18)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    VStack{
                        HStack {
                            Image("imageIcon").resizable().frame(width: 25, height: 30).foregroundColor(Color.white)
                            Spacer().frame(maxWidth: 10)
                            Text("View Notice").font(.system(size: 14)).fontWeight(.bold)
                        }
                    }.frame(width: 130, height: 15).padding().background(Color.green).cornerRadius(20)
                    
                    
                }
                
                
            }
            Spacer().frame(maxHeight: 25)
            HStack {
                Text("Save").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 18)).fontWeight(.bold)
                
                
            }.frame(width: 80, height: 15, alignment: .center).padding().background(Color.white).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0).padding(.horizontal, 70)
        }.frame(width: 330).padding().background(Color(hex: 0xfffcdd)).cornerRadius(20)
            //.shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
    }
}

struct TenderUI_Previews: PreviewProvider {
    static var previews: some View {
        TenderUI(title: "", tenderID: "", contentType: "", publishedOn: "", location: "", source: "", earMoney: "", docPrice: "", purLastDate: "", preMetDate: "", subDate: "", openingDate: "", visitors: "", viewImage: "")
    }
}
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
