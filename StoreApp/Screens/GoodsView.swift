//
//  GoodsView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 17.06.2023.
//

import SwiftUI

struct GoodsView: View {
    @EnvironmentObject private var sm: StoreViewModel
    let goods: StoreModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Image(goods.imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFill()
                .cornerRadius(10)
            
            Text(goods.name)
                .font(.system(size: 15, weight: .medium))
            
            HStack {
                Text(goods.price)
                    .font(.system(size: 15))
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                }
                
            }
            .opacity(0.5)
        }
    }
}

struct GoodsView_Previews: PreviewProvider {
    static var previews: some View {
        GoodsView(goods: StoreDataService.storeGoods.first!)
            .environmentObject(StoreViewModel())
    }
}
