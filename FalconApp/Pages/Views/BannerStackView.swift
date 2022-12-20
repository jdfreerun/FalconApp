//
//  BannerStackView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct BannerStackView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                ForEach(0..<2) { i in
                    BannerView(imageBanner: "banner\(i)")
                }
            }    }
    }
}

struct BannerStackView_Previews: PreviewProvider {
    static var previews: some View {
        BannerStackView()
    }
}

struct BannerView: View {
    var imageBanner: String
    var body: some View {
        HStack {
            Image(imageBanner)
                .background(Color.black)
                .cornerRadius(8)
        }
    }
}
