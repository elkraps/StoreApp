//
//  TabBarView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 21.06.2023.
//

import SwiftUI

struct TabBarView: View {
    @State var selectTab = "Home"
    
    let tabs = ["Home", "Wishlist", "Cart", "Profile"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectTab) {
                HomeView()
                    .tag("Home")
                
                WishlistView()
                    .tag("Wishlist")
                    
                CartView()
                    .tag("Cart")
                    
                ProfileView()
                    .tag("Profile")
                    
            }
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Spacer()
                    TabBarItem(tab: tab, selected: $selectTab)
                    Spacer()
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity)
            .background(Color(hex: "D3D3D3"))
            
        }
    }
}

struct TabBarItem: View {
    @State var tab: String
    @Binding var selected: String
    
    var body: some View {
        if tab == "Profile" {
            Button {
                withAnimation(.easeInOut) {
                    selected = tab
                }
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(selected == tab ? .green : .white)
                    
                    Image("Profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                }
            }

        } else {
            ZStack {
                Button {
                    withAnimation(.easeInOut) {
                        selected = tab
                    }
                } label: {
                    HStack {
                        Image(tab)
                            .resizable()
                            .frame(width: 20, height: 20)
                        if selected == tab {
                            Text(tab)
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.black)
                        }
                        
                    }
                }
            }
            .opacity(selected == tab ? 1 : 0.7)
            .padding(.vertical, 10)
            .padding(.horizontal, 17)
            .background(selected == tab ? .white : Color(hex: "D3D3D3"))
            .clipShape(Capsule())
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
