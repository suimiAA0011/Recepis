//
//  ContentView.swift
//  Res
// red: 0.222, green: 0.409, blue: 0.495
//  Created by Salma on 09/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm1 = ViewModel()
    

    
    
    @State var isLiked: Bool = false
    @State private var selected = 1
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor =  UIColor(red: 0.914, green: 0.742, blue: 0.225, alpha: 10)
        }
    
    
    @State var text :String = ""
    
    @State var isShowingprofile:Bool=false
    
    @State var isshownhome:Bool=false
    
    @State var isshownhomee:Bool=false
    
    @State private var showingPopover = false
    
    
    var body: some View {
        
        
            
        NavigationView {
            
            ZStack {
             
                  
                ZStack {
      
                    RoundedRectangle(cornerRadius: 25)
                        . fill (Color(red: 0.222, green: 0.409, blue: 0.495))
                        . frame ( width:800, height:170)
                    
                        . position ()
                    
                        . shadow ( radius: 3 )
                        . edgesIgnoringSafeArea ( .all )
               
                    ZStack {
                    
                        VStack {
                            Picker(selection: $selected, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                                Text("Menu").tag(1)
                                Text("Favorite").tag(2)
                                Text("My Recipes ").tag(3)
                            }.pickerStyle(.segmented)
                                .padding(.vertical, 10.0)
                                .padding(.top, 45.0)
                            //
                            
                            if selected == 1 {
                             
                                    
                                    Recipes()
                                    
                                
                            } else if selected == 2{
                                
                                ZStack {
                                    Favorites()
                                }
                                
                                
                                   
                        
                               
                                
                            }
                            else {
                               MyRecipes()
                                }
                                //                    NavigationView {
                                //                        ScrollView{
                                //                            List {
                                //
                                //                            }}}
                            }
                        }
                        }
                .padding()
               
                   
            }
                
                
            }
        }
            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
