//
//  JsonFetcher.swift
//  MenuSwiftUI
//
//  Created by Chetan Dhowlaghar on 11/18/22.
//

import Foundation


class JsonFetcher: ObservableObject {
    
   @Published var menuList = [Menu]()
    
    init(){
        fetchJson()
    }
    func fetchJson(){
        
        guard let url = Bundle.main.url(forResource: "menu", withExtension: "json")
        else {
            print("Json file not found")
            return
            
        }
        
        let data = try? Data(contentsOf: url)
        let menu = try? JSONDecoder().decode([Menu].self, from: data!)
        
        if let safeMenu = menu{
            self.menuList = safeMenu
        }
        print(menuList)
    }
    
}
