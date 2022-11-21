//
//  ContentView.swift
//  MenuSwiftUI
//
//  Created by Chetan Dhowlaghar on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var menu = JsonFetcher()
    
    var body: some View {
        VStack {
            
            List(menu.menuList){item in
                Section {
                    ForEach(item.items) { rowItems in
                        Text(rowItems.name)
                    }
                } header: {
                    Text(item.name)
                }
            }
            
        }.padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
