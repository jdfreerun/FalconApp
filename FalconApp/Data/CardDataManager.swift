//
//  CardDataManager.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import Foundation

class CardDataManager {
    static let shared = CardDataManager()
    
    lazy var data: [CardPreviewModel] = {
        return [CardPreviewModel(image: "m1", title: "Спальный гарнитур Мальта Дуб винтерберг", price: "24 680"),
                CardPreviewModel(image: "m2", title: "Модульная гарнитур Мальта Дуб винтерберг", price: "26 870"),
                CardPreviewModel(image: "m3", title: "Спальный гарнитур Мальта Таксония", price: "12 580"),
                CardPreviewModel(image: "m0", title: "Спальный гарнитур Мальта Дуб винтерберг", price: "13 450"),
                CardPreviewModel(image: "m4", title: "Спальный гарнитур Дуб винтерберг", price: "12 550"),
                CardPreviewModel(image: "m5", title: "Супер гарнитур Мальта Дуб винтерберг", price: "11 450")
        ]
    }()
}
