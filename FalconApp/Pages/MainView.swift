//
//  MainView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct MainView: View {
    let cardItem = CardDataManager.shared.data
    @State private var showinDetail = false
    var body: some View {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        chengeCity()
                        CategoryStackView()
                            .padding(.leading)
                            .padding(.trailing)
                        
                        ZStack {
                            VStack (alignment: .leading) {
                                Text("Акции")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                BannerStackView()
                                    .padding(.leading)
                                    .padding(.trailing)
                                
                                Text("Подборка популярных")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                
                                
                                LazyVGrid (
                                    columns: [
                                        GridItem(),
                                        GridItem()
                                    ]){
                                        ForEach(cardItem, id: \.self) { item in
                                            Button(action: {
                                                showinDetail.toggle()
                                            }) {
                                                CardView(
                                                    image: Image(item.image),
                                                    title: Text(item.title),
                                                    price: Text("\(item.price) ₽"))
                                                
                                            }.sheet(isPresented: $showinDetail) {
                                                DetailProductView()
                                            }
                                            
                                        }
                                    }
                                    .padding(.leading)
                                    .padding(.trailing)
                        }
                    }
                }
            }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct chengeCity: View {
    var body: some View {
        ZStack {
            HStack {
                Text("Выбран город:")
                    .foregroundColor(.white)
                    .padding(.leading)
                Spacer()
                Button {
                }
            label: {
                Text("Санкт-Петербург")
                    .padding(10)
                Image(systemName: "chevron.down")
                    .padding(.trailing)
            }
            .background(Color(Resorces.Colors.baseColorDark))
            .cornerRadius(8)
            .padding()
            .foregroundColor(.white)
                
            }
            .frame(height: 60)
            .background(Color(Resorces.Colors.baseRedColor))
        }
    }
}
