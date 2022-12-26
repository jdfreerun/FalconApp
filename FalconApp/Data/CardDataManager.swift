//
//  CardDataManager.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import Foundation

class CardDataManager {
    static let shared = CardDataManager()
    
    lazy var data: [CardModel] = {
        return [CardModel(id: 1, image: "m1", title: "Спальный гарнитур Мальта Дуб винтерберг", price: "10 000"),
                CardModel(id: 2, image: "m2", title: "Модульная гарнитур Мальта Дуб винтерберг", price: "26 870"),
                CardModel(id: 3, image: "m3", title: "Спальный гарнитур Мальта Таксония", price: "12 580"),
                CardModel(id: 4, image: "m0", title: "Спальный гарнитур Мальта Дуб винтерберг", price: "13 450"),
                CardModel(id: 5, image: "m4", title: "Спальный гарнитур Дуб винтерберг", price: "12 550"),
                CardModel(id: 6, image: "m5", title: "Супер гарнитур Мальта Дуб винтерберг", price: "11 450"),
        ]
    }()
}
