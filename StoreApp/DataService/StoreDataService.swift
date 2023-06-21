//
//  StoreDataService.swift
//  StoreApp
//
//  Created by Vlad Dzirko on 16.06.2023.
//

import Foundation

class StoreDataService {
    
    static let storeGoods: [StoreModel] = [
        StoreModel(
            name: "Vans Wayvee Shoes",
            price: 45.99,
            imageName: "vans_1",
            categories: "Shoes",
            description: "Stand Out From The Rest And Progress Designed From The Ground Up With Input From Skateboarders Who Know What It Means To Push The Limits Of Style And Progression"),
        
        StoreModel(
            name: "Nike Custom",
            price: 51.58,
            imageName: "nike_1",
            categories: "Shoes",
            description: "Comfortable and stylish sneakers from the legendary Nike company. Limited edition."),
        
        StoreModel(
            name: "Adidas adi2000",
            price: 35.24,
            imageName: "adidas_1",
            categories: "Shoes",
            description: "Ignite your rebel side with the adi2000 shoes, inspired by the bold age of the early 2000s. Injected with the era's skate DNA and set in a versatile palette, these adidas sneakers were designed with your style in mind."),
        
        StoreModel(
            name: "Air Max 95 Black Earth",
            price: 86.99,
            imageName: "nike_2",
            categories: "Shoes",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Adidas Spezial",
            price: 67.99,
            imageName: "adidas_2",
            categories: "Shoes",
            description: "The Adidas Spezial trainers are an identifiable classic style that became a popular terrace fashion icon."),
        
        StoreModel(
            name: "Adidas Yeezy 500",
            price: 99.99,
            imageName: "adidas_3",
            categories: "Shoes",
            description: "Legendary feat with Kaney West. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum"),
        
        StoreModel(
            name: "Duck?",
            price: 5.99,
            imageName: "acc_1",
            categories: "Accessories",
            description: "Lovely and cute. This is a good description for your purchase."),
        
        StoreModel(
            name: "Moon",
            price: 6.77,
            imageName: "acc_2",
            categories: "Accessories",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Flowers",
            price: 4.55,
            imageName: "acc_3",
            categories: "Accessories",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Ring with flower",
            price: 2.99,
            imageName: "acc_4",
            categories: "Accessories",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Duck-Bag?",
            price: 15.99,
            imageName: "bag_1",
            categories: "Bags",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Adidas",
            price: 17.99,
            imageName: "bag_2",
            categories: "Bags",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Carhart",
            price: 29.50,
            imageName: "bag_3",
            categories: "Bags",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Tommy Jeans",
            price: 21.99,
            imageName: "bag_4",
            categories: "Bags",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Vans",
            price: 18.99,
            imageName: "bag_5",
            categories: "Bags",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Classic",
            price: 7.99,
            imageName: "glass_1",
            categories: "Glasses",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Fier",
            price: 9.50,
            imageName: "glass_2",
            categories: "Glasses",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Black",
            price: 7.89,
            imageName: "glass_3",
            categories: "Glasses",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Another Black",
            price: 6.99,
            imageName: "glass_4",
            categories: "Glasses",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Shiny Pink",
            price: 11.99,
            imageName: "glass_5",
            categories: "Glasses",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Best Glasses Ever",
            price: 100,
            imageName: "glass_6",
            categories: "Glasses",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Lover",
            price: 33.99,
            imageName: "h_1",
            categories: "Hoodies",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Lucky me",
            price: 29.50,
            imageName: "h_2",
            categories: "Hoodies",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Drew",
            price: 39.99,
            imageName: "h_3",
            categories: "Hoodies",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Frog on Skate",
            price: 45.99,
            imageName: "h_4",
            categories: "Hoodies",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Tvyz",
            price: 49.50,
            imageName: "h_5",
            categories: "Hoodies",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "MF DOOM",
            price: 51.50,
            imageName: "h_6",
            categories: "Hoodies",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Choize",
            price: 21.50,
            imageName: "t_1",
            categories: "T-Shirt",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Internal Reform",
            price: 25.60,
            imageName: "t_2",
            categories: "T-Shirt",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Eye",
            price: 31.50,
            imageName: "t_3",
            categories: "T-Shirt",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Poker",
            price: 19.50,
            imageName: "t_4",
            categories: "T-Shirt",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Igor",
            price: 28.88,
            imageName: "t_5",
            categories: "T-Shirt",
            description: "This is a good description for your purchase."),
        
        StoreModel(
            name: "Energy",
            price: 33.19,
            imageName: "t_6",
            categories: "T-Shirt",
            description: "This is a good description for your purchase."),
    ]
    
}
        
        
