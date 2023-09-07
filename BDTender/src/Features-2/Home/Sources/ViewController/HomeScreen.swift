//
//  HomeScreen.swift
//  BDTender
//
//  Created by user on 3/19/23.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        ZStack {
            VStack {
               
                SearchView()
                Spacer().frame(maxHeight: 20)
                Text("Browse by...").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                Spacer().frame(maxHeight: 20)
                
                HStack {
                    Button(action: {}, label: {
                        
                        NavigationLink(destination: HomeScreen(), label: {
                            Text("Categories").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 13)).fontWeight(.bold)
                        })
                        
                        
                    }).buttonStyle(.borderedProminent)
                        .tint(.green)
                    Button(action: {}, label: {
                        
                        NavigationLink(destination: HomeScreen(), label: {
                            Text("Departments").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 13)).fontWeight(.bold)
                        })
                        
                        
                    }).buttonStyle(.borderedProminent)
                        .tint(.green)
                    Button(action: {}, label: {
                        
                        NavigationLink(destination: HomeScreen(), label: {
                            Text("District").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 13)).fontWeight(.bold)
                        })
                        
                        
                    }).buttonStyle(.borderedProminent)
                        .tint(.green)
                    Button(action: {}, label: {
                        
                        NavigationLink(destination: HomeScreen(), label: {
                            Text("Deadline").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 13)).fontWeight(.bold)
                        })
                        
                        
                    }).buttonStyle(.borderedProminent)
                        .tint(.green)
                }
                Spacer().frame(maxHeight: 20)
                Text("Daily tender status:").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                Spacer().frame(maxHeight: 30)
                
               PayView()
                
                
            }//vStack
           
        } 
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


