//
//  TenderDesign.swift
//  BDTender
//
//  Created by user on 3/21/23.
//

import SwiftUI

struct TenderDetails:  View{
    var body: some View{
        
        VStack (alignment: .leading) {
            Text("Find all your desired tenders Find all your desired ").foregroundColor(Color.black).font(.system( size: 28)).fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
            Spacer().frame(maxHeight: 25)
            Group {
                HStack  {
                    Text("Tender ID:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                    
                    
                }
                
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Content Type:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    
                    
                    //                        Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                    
                    
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Published on:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Location:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Source:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
            }
            
            Group {
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Ear. Money:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Doc. Price:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Pur. Last Date:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Pre. Met. Date:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Sub. date:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                
            }
            
            Group {
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Opening Date:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                
            }
            Group{
                Spacer().frame(maxHeight: 10)
                HStack  {
                    Text("Visitors:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    Text("Find all").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20))
                }
                Spacer().frame(maxHeight: 10)
                
                HStack  {
                    Text("View Image:").foregroundColor(Color.black).font(.system(size: 22)).fontWeight(.bold)
                    
                    Spacer().frame(maxWidth: 30)
                    VStack{
                        HStack {
                            Image("imageIcon").resizable().frame(width: 25, height: 30).foregroundColor(Color.white)
                            Spacer().frame(maxWidth: 10)
                            Text("View Notice").font(.system(size: 15)).fontWeight(.bold)
                        }
                    }.frame(width: 130, height: 20).padding().background(Color.green).cornerRadius(20)
                    
                    
                }
                Spacer().frame(maxHeight: 10)
                
            }
            Spacer().frame(maxHeight: 10)
            HStack {
                Text("Pay Now").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                
                
            }.frame(width: 150, height: 35, alignment: .center).padding().background(Color.white).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0).padding(.horizontal, 70)
        }.frame(width: 330).padding().background(Color.white).cornerRadius(20).shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
        
        
        
        
    }
}


struct TenderDesign_Previews: PreviewProvider {
    static var previews: some View {
        TenderDetails()
    }
}
