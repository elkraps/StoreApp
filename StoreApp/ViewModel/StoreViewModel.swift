//
//  StoreViewModel.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 17.06.2023.
//

import Foundation

class StoreViewModel: ObservableObject {
    
    @Published var goods: [StoreModel] = []
    @Published var total: Int = 0
    
    init() {
        let goods = StoreDataService.storeGoods
        self.goods = goods
    }
   
    func addToWishlist(product: StoreModel) {
        goods.append(product)
        total += Int(product.price)
    }
    
    func removeFromCart(product: StoreModel) {
        goods = goods.filter { $0.id != product.id }
        total -= Int(product.price)
    }
}
