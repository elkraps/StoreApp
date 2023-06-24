//
//  StoreViewModel.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 17.06.2023.
//

import Foundation

class StoreViewModel: ObservableObject {
    
    @Published var goods: [StoreModel] = []
    @Published var total: Double = 0
    
//    init() {
//        let goods = StoreDataService.storeGoods
//        self.goods = goods
//    }
   
    func addToCart(product: StoreModel) {
        goods.append(product)
        total += product.price
    }
    
    func removeFromCart(product: StoreModel) {
        goods = goods.filter { $0.id != product.id }
        total -= product.price
    }
}
