//
//  WishlistView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 21.06.2023.
//

import SwiftUI

struct WishlistView: View {
    @EnvironmentObject var sm: StoreViewModel
    var body: some View {
        ScrollView {
            if sm.goods.count > 0 {
                ForEach(sm.goods, id: \.id) { product in
                    ProductWishlistView(goods: product)
                }
                
            } else {
                Text("Your wishlist is empty :(")
            }
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
            .environmentObject(StoreViewModel())
    }
}
