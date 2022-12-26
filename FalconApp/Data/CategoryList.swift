//
//  CategoryList.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import Foundation

class CategoryDataManager {
    static let shared = CategoryDataManager()
    
    lazy var data: [CategoryModel] = {
        return [
            CategoryModel(name: "Распродажа %"),
            CategoryModel(name: "Гостиная"),
            CategoryModel(name: "Спальня"),
            CategoryModel(name: "Детская"),
            CategoryModel(name: "Прихожая"),
            CategoryModel(name: "Диваны"),
            CategoryModel(name: "Все категории")
        ]
    }()
}
