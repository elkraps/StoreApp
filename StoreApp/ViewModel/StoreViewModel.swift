//
//  StoreViewModel.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 17.06.2023.
//

import Foundation

class StoreViewModel: ObservableObject {
    
    @Published var goods: [StoreModel] = [] {
        didSet {
            saveGoods()
        }
    }
    
    @Published var total: Double = 0
    
    let goodsKey: String = "goods_list"
       
    init() {
        getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: goodsKey),
            let savedItems = try? JSONDecoder().decode([StoreModel].self, from: data)
        else { return }
        
        self.goods = savedItems
    }
    
    func addToCart(product: StoreModel) {
        goods.append(product)
        total += product.price
    }
    
    func removeFromCart(product: StoreModel) {
        goods = goods.filter { $0.id != product.id }
        total -= product.price
    }
    
    func saveGoods() {
        if let encodedData = try? JSONEncoder().encode(goods) {
            UserDefaults.standard.set(encodedData, forKey: goodsKey)
        }
    }
}
