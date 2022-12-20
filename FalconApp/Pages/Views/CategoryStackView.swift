//
//  CategoryView.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import SwiftUI

struct CategoryStackView: View {
    let data = CategoryDataManager.shared.data

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                ForEach(data, id: \.self) { item in
                    CategoryView(category: Text(item.name))
                }
            }
            .padding(.top)
        }
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryStackView()
    }
}

struct CategoryView: View {
    let category: Text

    var body: some View {
        HStack {
            Button(action: categoryAction) {
                category
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color(Resorces.Colors.baseRedColor))
                    .cornerRadius(8)
            }
        }
    }
    func categoryAction() {
        print(category)
        
    }
}
