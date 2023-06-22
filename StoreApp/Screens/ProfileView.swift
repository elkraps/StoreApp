//
//  ProfileView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 22.06.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color(hex: "D3D3D3")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Button {
                            //
                        } label: {
                            Image(systemName: "ellipsis")
                                .padding(.all, 12)
                                .background(.white)
                                .foregroundColor(.black)
                                .cornerRadius(30)
                        }
                        
                        Spacer()
                        
                        Text("Profile")
                        
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "ellipsis")
                                .padding(.all, 12)
                                .background(.white)
                                .foregroundColor(.black)
                                .cornerRadius(25)
                        }
                    }
                    .padding()
                }
            }
        }
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
