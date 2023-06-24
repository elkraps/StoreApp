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
                ProfileBar()
                
                AsapView()
                
                StatView()
                
                PersonalInfoView()
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileBar: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                
                Text("Profile")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.leading, 40)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image("ellipsis")
                        .padding(.all, 8)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct AsapView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image("Profile")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 200)
                .clipShape(Circle())
            
            Text("Rakim Athelston Mayers")
                .font(.system(size: 30, weight: .semibold))
            
            Text(verbatim: "asapRocky@gmail.bombom")
                .foregroundColor(.black)
                .font(.system(size: 18, weight: .light))
                .opacity(0.9)
            
        }
        .padding(.top, -15)
    }
}

struct StatView: View {
    var body: some View {
        VStack{
            HStack{
                
                VStack {
                    Image(systemName: "handbag")
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.white)
                        .background(.black)
                        .clipShape(Circle())
                    
                    Text("Progress order")
                        .font(.system(size: 15))
                    Text("15+")
                }
                
                
                VStack {
                    Image(systemName: "ticket")
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.white)
                        .background(.black)
                        .clipShape(Circle())
                    
                    Text("Promocodes")
                        .font(.system(size: 15))
                    Text("8")
                }
                .padding(.trailing, 20)
                
                
                
                VStack {
                    Image(systemName: "star")
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.white)
                        .background(.black)
                        .clipShape(Circle())
                    
                    Text("Reviews")
                        .font(.system(size: 15))
                    Text("5.5K")
                }
                .padding(.trailing, 20)
            }
            
            .padding()
            
        }
        .padding(.all, 15)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.top, 10)
    }
}

struct PersonalInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Personal Information")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 3)
            
            VStack(spacing: 10) {
                HStack{
                    Text("Name:")
                        .font(.system(size: 18))
                        .opacity(0.5)
                    Spacer()
                    Text("Rakim Athelston Mayers")
                        .font(.system(size: 18, weight: .semibold))
                    
                }
                HStack{
                    Text("Email:")
                        .font(.system(size: 18))
                        .opacity(0.5)
                    Spacer()
                    Text(verbatim: "asapRocky@gmail.bombom")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.black)
                }
                HStack{
                    Text("Location:")
                        .font(.system(size: 18))
                        .opacity(0.5)
                    Spacer()
                    Text("Los Angeles CA")
                        .font(.system(size: 18, weight: .semibold))
                }
                HStack{
                    Text("Zip Code:")
                        .font(.system(size: 18))
                        .opacity(0.5)
                    Spacer()
                    Text("78577")
                        .font(.system(size: 18, weight: .semibold))
                }
            }
            .padding(.all, 15)
            .background(Color.white)
            .cornerRadius(25)
        }
        .padding()
    }
}
