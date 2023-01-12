//
//  Favorites.swift
//  Res
//
//  Created by Salma on 10/01/2023.
//

import SwiftUI

struct Favorites: View {
    @StateObject private var vm = ViewModel()
    var body: some View {
        
        
        
     
        VStack {
            VStack{
                //Button("Favorite", action: vm.sortFaves)
                   // .padding()
                List{
                ForEach(vm.filteredItems1){item in
                        
                        ZStack {
                            
                            HStack {
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())
                                    .shadow(radius: 1)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                
                                Text(item.name)
                                Spacer()
                                Image(systemName:  vm.contains(item) ? "heart.fill" :"heart")
                                    .foregroundColor(.red)
                                    .onTapGesture {
                                        vm.togglefav(item: item)
                                    }
                                
                            }}
                                
                                
                            }}
                    }
                }
            }  }
    



struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
