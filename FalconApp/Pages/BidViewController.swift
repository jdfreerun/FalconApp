//
//  BidViewController.swift
//  FalconApp
//
//  Created by McBook on 21.12.2022.
//

import SwiftUI

struct BidViewController: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BidViewController_Previews: PreviewProvider {
    static var previews: some View {
        BidViewController()
    }
}

struct BidNabView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(Resorces.Colors.background)
                BidViewController()
            }
            .navigationTitle("Заявка")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
