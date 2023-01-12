//
//  MyRecipes.swift
//  Res
//
//  Created by Salma on 10/01/2023.
//

import SwiftUI

struct MyRecipes: View {
    @State var isshownhomee:Bool=false
    @State private var showingPopover :Bool = false
    var body: some View {
        
           
        ZStack {
            
                 List(0..<2) { item in
                             ZStack {
                                 RoundedRectangle(cornerRadius: 25).fill(.white)
                                     .frame(width: 300, height:100)
    //                                 .overlay(RoundedRectangle(cornerRadius: 2).stroke(.white, lineWidth: 1.5)).shadow(radius: 1)
                                 HStack {
                                     //                                 Image("Oval3")
                                     //                                     .resizable()
                                     //                                       .frame(width: 90, height: 90)
                                     //                                     .clipShape(Circle())
                                     //                                     .shadow(radius: 1)
                                     //                                     .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                     //                                     .padding(.trailing, 20.0)
                                    
                                     Button(action: {
                                         showingPopover.toggle()
                                     }) {
                                         Text("item").foregroundColor(.black)
                                     }
                                 }.padding(.leading,-13)
                                 
                             
                         
                     }
                 }
                 
           
            
            Button {
                isshownhomee.toggle()
                }
        label:{
            Text("add Recipe")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width:150, height: 51)
                .background(Color(red: 0.914, green: 0.742, blue: 0.225))
                .cornerRadius(10.0)
            }.position(x:280,y:450)
        }
    }
}

struct MyRecipes_Previews: PreviewProvider {
    static var previews: some View {
        MyRecipes()
    }
}
