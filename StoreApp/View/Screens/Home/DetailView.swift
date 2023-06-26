//
//  DetailView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 18.06.2023.
//

import SwiftUI



struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject private var vm: StoreViewModel
    
    private let sizes = ["40","41","42","43","44","45","46"]
    
    let goods: StoreModel
    
    var body: some View {
        ZStack {
            Color(hex: "D3D3D3")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Image(goods.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(25)
                    
                    Description(name: goods.name, description: goods.description)
                        .padding(.bottom)
                    
                    if goods.categories == "Shoes" {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Size")
                                .font(.system(size: 20, weight: .bold))
                            
                            HStack(spacing: 15) {
                                ForEach(0 ..< sizes.count) { item in
                                    ShoesSizeView(text: sizes[item])
                                }
                            }
                        }
                        .padding(.bottom)
                    } else if goods.categories == "T-Shirt" {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Size")
                                .font(.system(size: 20, weight: .bold))
                            
                            HStack(spacing: 15) {
                                Text("S / M / L")
                                    .font(.system(size: 15, weight: .light))
                            }
                        }
                        .padding(.bottom)
                    } else {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Size")
                                .font(.system(size: 20, weight: .bold))
                            
                            HStack(spacing: 15) {
                                Text("Universal size")
                                    .font(.system(size: 15, weight: .light))
                            }
                        }
                        .padding(.bottom)
                    }
                    
                    AboutView(text: goods.name, price: goods.price)
                }
            }
            .padding()
            .padding(.bottom, 30)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                CustomBackButton(action: {presentationMode.wrappedValue.dismiss()})
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    vm.addToCart(product: goods)
                } label: {
                    Image(systemName: "heart")
                        .padding(.all, 12)
                        .background(.white)
                        .cornerRadius(25)
                        .foregroundColor(.black)
                }

            }
        }
        .navigationTitle(goods.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(goods: StoreDataService.storeGoods.first!)
            .environmentObject(StoreViewModel())
    }
}

struct CustomBackButton: View {
    let action: ()-> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            Image(systemName: "arrow.left")
                .padding(.all, 12)
                .foregroundColor(.black)
        }

    }
}

struct Description: View {
    let name: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.system(size: 25, weight: .bold))
            
            Text(description)
                .font(.system(size: 15, weight: .light))
        }
    }
}

struct ShoesSizeView: View {
    
    let text: String
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text(text)
                    .frame(width: 35, height: 35)
                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
                    .foregroundColor(.black)
            }
        }
    }
}

struct AboutView: View {
    let text: String
    let price: Double
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                HStack(spacing: 0) {
                    ForEach(0 ..< 5) { item in
                        Image(systemName: "star.fill")
                    }
                }
            }
            
            HStack {
                Text("Size: 42")
                
                Spacer()
                
                Text("(64 Reviews)")
            }
            .opacity(0.6)
            
            Spacer()
            
            HStack(spacing: 35) {
                Text("$\(price.formatted())")
                    .font(.system(size:25, weight: .bold))
                
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "minus")
                            .padding(.all, 5)
                    }
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    
                    Text("1")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .padding(.all, 5)
                    }
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                }
                .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                
                Button {
                    
                } label: {
                    Text("Buy")
                        .frame(width: 80, height: 30)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.black))
                        .foregroundColor(.white)
                }
            }
        }
        
        .padding(.all, 15)
        .frame(height: 140)
        .background(Color.white)
        .cornerRadius(25)
    }
}
