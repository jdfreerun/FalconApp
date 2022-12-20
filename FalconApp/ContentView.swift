//
//  ContentView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct ContentView: View {


    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }

            ProductsView()
                .tabItem {
                    Image(systemName: "sofa")
                    Text("Продукция")
                }
            BidView()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Заявка")
                }
            MenuView()
                .tabItem {
                    Image(systemName: "line.3.horizontal.circle")
                    Text("Меню")
                }
        }    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(Resorces.Colors.background)
                MainView()
            }
            .navigationTitle("Falcon Studio")
            .navigationBarTitleDisplayMode(.large)
//            .toolbar {
//                Button {
//                }
//            label: {
//                
//                Image("phone.circle.fill")
//                
//            }
//            }
        }
        .navigationBarColor(Resorces.Colors.baseRedColor)
    }
}

struct ProductsView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(Resorces.Colors.background)
                //View
            }
            .navigationTitle("Продукция")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
struct BidView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(Resorces.Colors.background)
                //View
            }
            .navigationTitle("Заявка")
            .navigationBarTitleDisplayMode(.inline)

        }
    }
}
struct MenuView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(Resorces.Colors.background)
                //View
            }
            .navigationTitle("Меню")
            .navigationBarTitleDisplayMode(.inline)

        }
        .background(Color.red)
    }
}

