//
//  CardModel.swift
//  FalconApp
//
//  Created by McBook on 17.12.2022.
//

import Foundation

struct CardModel: Hashable, Codable, Identifiable {
    var id: Int
    let image: String
    let title: String
    let price: String
}
