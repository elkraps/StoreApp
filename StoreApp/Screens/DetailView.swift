//
//  DetailView.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 18.06.2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
//    let goods: StoreModel
    
    var body: some View {
        ZStack {
            Color(hex: "D3D3D3")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("nike_1")
                    .resizable()
                    .scaledToFit()
                    
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                CustomBackButton(action: {presentationMode.wrappedValue.dismiss()})
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "heart")
                    .padding(.all, 12)
                    .background(.white)
                    .cornerRadius(25)
            }
        }
        .navigationTitle("Nike")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
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
