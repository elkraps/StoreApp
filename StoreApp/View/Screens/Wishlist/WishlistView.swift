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
        ZStack {
            Color(hex: "D3D3D3")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                if sm.goods.count > 0 {
                    ForEach(sm.goods, id: \.id) { product in
                        ProductView(goods: product)
                    }
                    
                } else {
                    
                    Text("Your wishlist is empty :(")
                        .padding(.all, 100)
                    
                }
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
