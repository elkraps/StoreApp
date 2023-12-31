//
//  StoreModel.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 16.06.2023.
//

import Foundation

struct StoreModel: Equatable, Identifiable, Codable {
    let name: String
    let price: Double
    let imageName: String
    let categories: String
    let description: String
    
    var id: String {
        name + categories
    }
    
    static func == (lhs: StoreModel, rhs: StoreModel) -> Bool {
        lhs.id == rhs.id
    }
}
