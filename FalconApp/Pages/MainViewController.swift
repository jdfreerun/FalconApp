//
//  MainView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct MainViewController: View {
    let cardItem = CardDataManager.shared.data
    @State var cardDetail: CardModel?
    
    @ObservedObject var model = ViewModel()

    
    var body: some View {
        
            ZStack {
                    Color(Resorces.Colors.background)

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            changeCity()
                            CategoryStackView()
                                .padding(.leading)
                            
                            ZStack {
                                VStack (alignment: .leading) {
                                    Text("Акции")
                                        .font(.system(size: 24))
                                        .foregroundColor(.black)
                                        .padding(.leading)
                                    BannerStackView()
                                        .padding(.leading)
                                    
                                    CallBackView()
                                        .padding()
                                    
                                    Text("Подборка популярных")
                                        .font(.system(size: 24))
                                        .foregroundColor(.black)
                                        .padding(.leading)
                                    LazyVGrid (
                                        columns: [
                                            GridItem(),
                                            GridItem()
                                        ]){
//                                            ForEach(self.cardItem, id: \.id) { object in
//                                                Button(action: {
//                                                    cardDetail = CardModel(
//                                                        id: object.id,
//                                                        image: object.image,
//                                                        title: object.title,
//                                                        price: object.price)
//
//                                                }) {
//                                                    CardView(
//                                                        image: Image(object.image),
//                                                        title: Text(object.title),
//                                                        price: Text("\(object.price) ₽"))
//
//                                                }.sheet(item: $cardDetail) {object in
//                                                    DetailProductView(
//                                                        image: Image(object.image),
//                                                        title: Text(object.title),
//                                                        price: Text("\(object.price) ₽"))
//                                                }
//                                            }
                                            
                                            
                                            ForEach(model.productsList) { item in
                                                CardView(image: Image("m1"),
                                                         title: Text(item.title),
                                                         price: Text(item.price))
                                            }
                                        }
                                        .padding(.leading)
                                        .padding(.trailing)
                                   
                                    CreateBidView()
                                        .padding()
                        }
                    }
                }
            }
        }
    }
    
    init() {
        model.getData()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewController()
    }
}

struct changeCity: View {
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


