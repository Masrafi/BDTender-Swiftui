//
//  NavBarView.swift
//  BDTender
//
//  Created by user on 3/20/23.
//

import SwiftUI

struct NavBarView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
               // HStack {
                Image(systemName: "arrowshape.backward.fill") // set image here
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.green)
                    
                //}
            }
        }
    var body: some View {
        ZStack {
            TabView {
                HomeScreen().tabItem{
                    VStack {
                        Image(systemName: "house.fill").font(.title)
                        Text("Home").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                    }
                    
                    
                }
                HttpURLSession().tabItem{
                    VStack {
                        Image(systemName: "briefcase").font(.title)
                        Text("All Tender").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                    }
                }
                MyTender().font(.system(size: 30, weight: .bold, design: .rounded)).tabItem{
                    // person.crop.circle
                    Image(systemName: "tray.and.arrow.down.fill").font(.title)
                    Text("My Tender").foregroundColor(Color.black).font(.custom("PlayfairDisplay-Bold", size: 20)).fontWeight(.bold)
                    
                }
                
                FavTender()
                    .tabItem {
                        Label("Fav. Tender", systemImage: "heart.fill")
                    }
                Text("Tender Deadline")
                    .tabItem {
                        Label("Tender Deadline", systemImage: "1.circle")
                    }
                Text("Tender Log")
                    .tabItem {
                        Label("Tender Log", systemImage: "2.circle")
                    }
                Text("Services")
                    .tabItem {
                        Label("Services", systemImage: "3.circle")
                    }
                
                Text("Price")
                    .tabItem {
                        Label("Price", systemImage: "4.circle")
                    }
                Text("Why BDTender?")
                    .tabItem {
                        Label("Why BDTender?", systemImage: "5.circle")
                    }
                Text("About us")
                    .tabItem {
                        Label("About us", systemImage: "6.circle")
                    }
            }.accentColor(.green).edgesIgnoringSafeArea(.top)
        }.navigationBarBackButtonHidden(true).navigationBarItems(leading:  HStack { btnBack
            Button(action: {
                withAnimation {
                }
                print("Open the side menu")
            }) {
                    Image("Profile").resizable().frame(width: 35, height:  35).clipShape(Circle())
            }
            
            Text("BDTender").font(.title3)
        } ,trailing:HStack(spacing: 18){
           // Button(action: {}, label: {
                NavigationLink(destination: OrganizationView(), label: {
                    Image("organization").resizable().frame(width: 25, height: 25)
                })
           // })
            //Button(action: {}, label: {
                NavigationLink(destination: CategoryView(), label: {
                    Image("category").resizable().frame(width: 25, height: 25)
                })
            //})
           // Button(action: {}, label: {
                NavigationLink(destination: District(), label: {
                    Image("district").resizable().frame(width: 25, height: 25)
                })
            //})
        }
        )
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
