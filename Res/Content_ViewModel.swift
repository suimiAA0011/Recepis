//
//  Content_ViewModel.swift
//  Res
//
//  Created by Salma on 11/01/2023.
//

import Foundation
import SwiftUI

    class ViewModel: ObservableObject {
        @Published var items = [Likes]()
        @Published var showingFavs = false
        @Published var showingFavs1 = true
        @Published var savedItems: Set<Int> = [1, 7]
        var filteredItems: [Likes] {
            if showingFavs {
                return items.filter { savedItems.contains($0.id)}
            } else {
                return items
            }}
        var filteredItems1: [Likes] {
            if showingFavs1 {
                return items.filter { savedItems.contains($0.id)}
            } else {
                return items
            }}
            private var db = Database()
                
            init() {
                self.savedItems = db.load()
                self.items = ArrayModificationViewModel1.sampleItems
            }
        
        
        func sortFaves() {
            withAnimation {
                showingFavs.toggle()
            }
        }
        
        func contains(_ item:Likes)->Bool{
            
            savedItems.contains(item.id)
        }
        func togglefav(item:Likes){
            if contains(item){
                savedItems.remove(item.id)
                
            }
            else{
                savedItems.insert(item.id)
            }
            db.save(items: savedItems)
            
        }
        }
