//
//  ContentView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 15.06.2023.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedIndex: Int = 0
    private let categories = ["All","Shoes","Bags","Glasses","Accessories","T-Shirts","Hoodies"]
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    @EnvironmentObject private var sm: StoreViewModel
//    let goods: StoreModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "D3D3D3")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        AppBarView()
                        
                        SearchBar()
                        
                        SaleView()
                        
                        Text("NEW IN")
                            .font(.system(size: 25, weight: .bold))
                            .padding(.leading)
                            .padding(.bottom, -15)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< categories.count) { item in
                                    CategoryView(isActive: item == selectedIndex, text: categories[item])
                                        .onTapGesture {
                                            selectedIndex = item
                                        }
                                }
                            }
                        }
                        .padding()
                        
                        
                        ScrollView {
                            LazyVGrid(columns: columns) {
                                ForEach(StoreDataService.storeGoods, id: \.id) { items in
                                    NavigationLink(
                                        destination: DetailView()){
                                            GoodsView(goods: items)
                                                .padding(8)
                                        }
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                        .padding(.top, -15)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image("hamburger")
                    .padding(.all, 12)
                    .background(.white)
                    .cornerRadius(25)
            }
            
            Spacer()
            
            Text("Awesome")
                .font(.system(size: 25, weight: .bold))
            
            Spacer()
            
            Button {
                
            } label: {
                Image("bell")
                    .padding(.all, 12)
                    .background(.white)
                    .cornerRadius(25)
            }
        }
        .padding(.horizontal)
    }
}

struct SearchBar: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            Image("search")
            TextField("Search", text: $search)
            Button {
                
            } label: {
                Image(systemName: "mic")
                    .foregroundColor(.black)
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .padding(.all, 15)
    }
}

struct ImageOverlay: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Get your \nspecial sale")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
            
            Button {
                
            } label: {
                Text("Up to 65% ")
                    .padding(.all, 5)
                    .font(.system(size: 15))
                    .background(.white)
                    .foregroundColor(.black)
                    
            }
            .cornerRadius(10)
            .opacity(0.9)
        }
        .padding(.leading, 30)
    }
}

struct SaleView: View {
    var body: some View {
        HStack {
            Image("sneek")
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 150)
                .cornerRadius(25)
                .padding()
                .overlay(ImageOverlay(), alignment: .leading)
            
        }
        .padding(.top, -15)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(isActive ? Color(.black) : Color.black.opacity(0.5))
            
            if (isActive) {
                Color(.black)
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
    }
}
