//
//  ProductWishlistView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 21.06.2023.
//

import SwiftUI

struct ProductWishlistView: View {
    @EnvironmentObject var sm: StoreViewModel
    var goods: StoreModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack(spacing: 20) {
                Image(goods.imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .cornerRadius(10)
                    
                
                VStack(alignment: .leading) {
                    Text(goods.name)
                        .font(.system(size: 18,weight: .bold))
                    
                    Text("Color: blah-blah")
                        .font(.system(size: 15, weight: .light))
                        .opacity(0.8)
                    
                    Text("$\(goods.price.formatted())")
                        .bold()
                }
                
                Spacer()
                
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .onTapGesture {
                        sm.removeFromCart(product: goods)
                    }
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.red)
    }
}

struct ProductWishlistView_Previews: PreviewProvider {
    static var previews: some View {
        ProductWishlistView(goods: StoreDataService.storeGoods.first!)
            .environmentObject(StoreViewModel())
    }
}
