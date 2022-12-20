//
//  CardView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct CardView: View {
    let image: Image
    let title: Text
    let price: Text
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 145, height: 110)
                .cornerRadius(10.0)
            title
                .frame(width: 145, height: 35, alignment: .top)
                .foregroundColor(Color.black)
                .font(.system(size: 13))
            
            HStack (spacing: 2){
                
                    Image("star")
                Text("4.9")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .padding(.leading, 5)
                
                Spacer()
                
                price
                    .foregroundColor(Color.black)
                    .font(.system(size: 14))
            }
        }
        .frame(width: 135)
        .padding()
        .background(Color.white)
        .cornerRadius(15.0)
        .shadow(radius: 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: Image("m1"), title: Text("Модульная гарнитура Мальта Дуб винтерберг"), price: Text("100 $"))
    }
}
