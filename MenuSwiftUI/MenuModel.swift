//
//  MenuModel.swift
//  MenuSwiftUI
//
//  Created by Chetan Dhowlaghar on 11/18/22.
//

import Foundation

struct Menu: Codable, Identifiable{
    
    var id : String
    var name : String
    var items : [Item]
    
}

struct Item: Codable, Identifiable {
    
    var id : String
    var name : String
    var photoCredit : String
    var price : Int
    var restrictions : [String]
    var description : String
    
}


