//
//  Recipes.swift
//  Res
//
//  Created by Salma on 10/01/2023.
//

import SwiftUI


    
struct Recipes: View {
    @StateObject private var vm1 = ViewModel()
    @StateObject var vm = ArrayModificationViewModel1()
    @State var isLiked : Bool = false
    @State var text :String = ""
    
    @State var isShowingprofile:Bool=false
    
    @State var isshownhome:Bool=false
    
    @State var isshownhomee:Bool=false
    
    @State private var showingPopover = false
    
  
    
    var body: some View {
        
        VStack {
            HStack (spacing :10) {
                
                
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                TextField("Search...", text: $text)
                
                
            } .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(.secondarySystemBackground)))
            .padding(.horizontal)
            List{
               
                    ForEach(vm1.filteredItems) { recipe in
                        ZStack {
                            RoundedRectangle(cornerRadius: 25).fill(.white)
                                
                            
                            HStack (){
                                
                                Button {
                                    
                                    isshownhomee.toggle()
                                } label : {
                                    Spacer()
                                    HStack{
                                        
                                        Button {
                                            isshownhomee.toggle()
                                            
                                        } label:{
                                            Image(recipe.image)
                                                .resizable()
                                                  .frame(width: 90, height: 90)
                                                .clipShape(Circle())
                                                .shadow(radius: 1)
                                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                                
                                            
                                        }
                                        Spacer()
                                        
                                        
                                            Text(LocalizedStringKey(recipe.name))
                                                
                                                .foregroundColor(.black)
                                        Spacer()
                                        Button(action: {
                                           self.isLiked.toggle()
                                        }) {
                                            Image(systemName:   vm1.contains(recipe) ? "heart.fill" :"heart").foregroundColor(.red).padding(.leading, 1)
                                                .onTapGesture {
                                                    vm1.togglefav(item:recipe)
                                                                    }}
                                           
                                        
                                    }.padding(.leading,-25.0)
                                        .padding(.leading, 24.0)
                                }
                               .fullScreenCover(isPresented:$isshownhomee ){
Recipe()
                                     }
                                
                               
                                
                                //.padding()
                                // Spacer()
                            }
                        }
           
                       
                    }
                
            }
            
        }
        
        
        }
//    var searchResults: [Likes] {
//           if text.isEmpty {
//               return vm1.filteredItems
//           } else {
//               return vm1.filteredItems.filter{$0.contains(text) }
//           }
//       }
    
    }



struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
