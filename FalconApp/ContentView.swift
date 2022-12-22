//
//  ContentView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tabController = TabController()

    var body: some View {
        
        TabView(selection: $tabController.activeTab) {
            MainNavView()
                .tag(Tab.main)
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }
            
            ProductsView()
                .tag(Tab.products)
                .tabItem {
                    Image(systemName: "sofa")
                    Text("Продукция")
                }
            
            BidNabView()
                .tag(Tab.bid)
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Заявка")
                }
            
            MenuView()
                .tag(Tab.menu)
                .tabItem {
                    Image(systemName: "line.3.horizontal.circle")
                    Text("Меню")
                }
        }
        .environmentObject(tabController)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MainNavView: View {

    var body: some View {
        NavigationView {
            
            ZStack {
                Color(Resorces.Colors.background)
                MainViewController()
            }
            .navigationTitle("Falcon Studio")
            .navigationBarTitleDisplayMode(.large)
            //            .toolbar {}
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




