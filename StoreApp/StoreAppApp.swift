//
//  StoreAppApp.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 15.06.2023.
//

import SwiftUI

@main
struct StoreAppApp: App {
    
    @StateObject private var sm = StoreViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(sm)
        }
    }
}
