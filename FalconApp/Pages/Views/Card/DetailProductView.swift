//
//  DetailProductView.swift
//  FalconApp
//
//  Created by McBook on 18.12.2022.
//

import SwiftUI

struct DetailProductView: View {
    var body: some View {
        
        ZStack {
            Color(Resorces.Colors.background)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                Image("m1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DesriptionView()
                    .offset(y: -40.0)
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
        
    }
}

struct DetailProductView_Previews: PreviewProvider {
    static var previews: some View {
        DetailProductView()
    }
}
struct DesriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Спальный гарнитур Мальта Дуб винтербег")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.black)
            HStack (spacing: 8) {
                ForEach(0..<5) { item in
                    Image("star")
                }
                Spacer()
                Text("24 560 ₽").padding(10)
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color(Resorces.Colors.baseRedColor))
                    .cornerRadius(8)
            }
            Text("Описание")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .lineSpacing(8.0)
                .opacity(0.5)
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Габариты")
                        .fontWeight(.semibold)
                        .padding(.bottom, 2)
                    Text("Длина")
                        .opacity(0.5)
                        .padding(.bottom, 1)
                    Text("Ширина")
                        .opacity(0.5)
                        .padding(.bottom, 1)
                    
                    Text("Высота")
                        .opacity(0.5)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                VStack(alignment: .leading) {
                    Text("Вес")
                        .fontWeight(.semibold)
                        .padding(.bottom, 2)
                    Text("Материал")
                        .opacity(0.5)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.vertical)
        }
        .padding()
        .padding(.top)
        .background(Color.white)
        .cornerRadius(10.0)
    }
}

