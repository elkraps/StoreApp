//
//  StoreViewModel.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 17.06.2023.
//

import Foundation

class StoreViewModel: ObservableObject {
    
    @Published var goods: [StoreModel]
    
    init() {
        let goods = StoreDataService.storeGoods
        self.goods = goods
    }
}
