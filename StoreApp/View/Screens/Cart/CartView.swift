//
//  CartView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 24.06.2023.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var sm: StoreViewModel
    
    @State var isBottomSheetShow = false
    
    var body: some View {
        ZStack {
            Color(hex: "D3D3D3")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Text("My cart")
                    .font(.system(size: 25, weight: .bold))
                
                VStack {
                    if sm.goods.count > 0 {
                        ForEach(sm.goods, id: \.id) { product in
                            ProductView(goods: product)
                        }
                    } else {
                        
                        Text("Your cart is empty :(")
                            .padding()
                    }
                }
                
                
                PromocodeView()
                
                TotalView()
                
                VStack {
                    Button {
                        isBottomSheetShow.toggle()
                    } label: {
                        Text("Proceed to Checkout")
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.black))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .padding(.bottom, 25)
            }
            .sheet(isPresented: $isBottomSheetShow) {
                PaymentView()
                    .presentationDetents([.height(600)])
                    
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(StoreViewModel())
    }
}

struct PromocodeView: View {
    var body: some View {
        @State var promocod: String = ""
        
        HStack {
            
            TextField("Promo code", text: $promocod)
            
            Button {
                
            } label: {
                Text("Apply")
                    .frame(width: 60, height: 30)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.black))
                    .foregroundColor(.white)
                
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding(.all, 15)
    }
}

struct TotalView: View {
    @EnvironmentObject var sm: StoreViewModel
    private var ship: Double = 4.99
    
    var body: some View {
        VStack {
            HStack {
                Text("Subtotal")
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
                Text("$\(sm.total.formatted())")
                    .font(.system(size: 18, weight: .semibold))
            }
            Divider()
            HStack {
                Text("Shipping")
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
                Text("$\(ship.formatted())")
                    .font(.system(size: 18, weight: .semibold))
            }
            Divider()
            HStack {
                Text("Bag Total")
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
                Text("$\(sm.total.formatted())")
                    .font(.system(size: 18, weight: .semibold))
            }
        }
        .padding()
    }
}
