//
//  PaymentView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 24.06.2023.
//

import SwiftUI

struct PaymentView: View {
    var body: some View {
        ZStack{
            Color(hex: "D3D3D3")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                Text("Payment Method")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.top, 30)
                
                VStack(alignment: .leading) {
                    
                    CardView()
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("CardHolder Name")
                            .font(.system(size: 15))
                            .opacity(0.7)
                        
                        Text("Ex: Rakim Athelston Mayers")
                            .font(.system(size: 18))
                        
                    }
                    .padding(7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.all, 15)
                    

                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Card Number")
                            .font(.system(size: 15))
                            .opacity(0.7)

                        Text("**** **** **** 1289")
                            .font(.system(size: 18))
                    }
                    .padding(7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.all, 15)

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Valid thru")
                            .font(.system(size: 15))
                            .opacity(0.7)

                        Text("09/25")
                            .font(.system(size: 18))
                    }
                    .padding(7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.all, 15)
                    
                }
            }
            
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Current Balance")
                        .font(.system(size: 18))
                        .opacity(0.6)
                        .foregroundColor(.white)
                    
                    Text("$5,750.20")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    
                }
                
                Spacer()
                
                VStack {
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.red)
                            .padding(.trailing, -20)
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.yellow)
                            .opacity(0.8)
                    }
                    
                    Text("mastercard")
                        .foregroundColor(.white)
                        .font(.system(size: 10))
                }
            }
            .padding()
            
            Spacer()
            
            HStack {
                Text("**** **** **** 1289")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Spacer()
                
                Text("09/25")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .opacity(0.6)
            }
            .padding()
        }
        .frame(width: .infinity, height: 200)
        .background(.black)
        .cornerRadius(25)
        .padding()
    }
}
