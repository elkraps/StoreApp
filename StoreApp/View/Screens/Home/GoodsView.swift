//
//  GoodsView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 17.06.2023.
//

import SwiftUI

struct GoodsView: View {
    @EnvironmentObject private var vm: StoreViewModel
    
    let goods: StoreModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Image(goods.imageName)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                Text(goods.name)
                    .font(.system(size: 15, weight: .medium))
                
                HStack {
                    Text("$\(goods.price.formatted())")
                        
                    
                    Spacer()
                    
                    Button {
                        vm.addToCart(product: goods)
                    } label: {
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                    }
                }
                .opacity(0.8)
            }
        }
        .frame(width: 180, height: 250)
    }
}

struct GoodsView_Previews: PreviewProvider {
    static var previews: some View {
        GoodsView(goods: StoreDataService.storeGoods.first!)
            .environmentObject(StoreViewModel())
    }
}
