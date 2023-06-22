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
                    HStack {
                        VStack(alignment: .leading){
                            Text(goods.name)
                                .font(.system(size: 20, weight: .semibold))
                            
                            Text("Size: blah / Color: blah")
                                .font(.system(size: 15, weight: .light))
                                .opacity(0.8)
                            
                        }
                        
                        Spacer()
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .onTapGesture {
                                sm.removeFromCart(product: goods)
                            }
                            .padding(.bottom, 20)
                    }
                    
                    HStack {
                        
                        Text("$\(goods.price.formatted())")
                            .font(.system(size: 20, weight: .bold))
                        
                        Spacer()
                        
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "minus")
                                    .padding(.all, 5)
                            }
                            .frame(width: 25, height: 25)
                            .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                            .foregroundColor(.black)
                            
                            
                            Text("1")
                                .font(.title2)
                                .fontWeight(.medium)
                                    .padding(.horizontal, 5)
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "plus")
                                    .padding(.all, 5)
                            }
                            .frame(width: 25, height: 25)
                            .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                            .foregroundColor(.black)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductWishlistView_Previews: PreviewProvider {
    static var previews: some View {
        ProductWishlistView(goods: StoreDataService.storeGoods.first!)
            .environmentObject(StoreViewModel())
    }
}
