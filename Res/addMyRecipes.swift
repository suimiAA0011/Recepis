//
//  addMyRecipes.swift
//  Res
//
//  Created by Salma on 12/01/2023.
//

import SwiftUI

struct addMyRecipes: View {
    @State private var recipes = ""

    var body: some View {
       // VStack {
            ZStack{
               
                RoundedRectangle(cornerRadius: 25)
                . fill (Color(red: 0.222, green: 0.409, blue: 0.495))
                . frame ( width:800, height:260)

                                     . position ()
                                
                                    . shadow ( radius: 3 )
                                    . edgesIgnoringSafeArea ( .all )
                
                Button(action:{
                    buttonPressed()
                }) {Image(systemName: "chevron.backward")
                        .foregroundColor(Color(red: 0.914, green: 0.742, blue: 0.225))
                }
                .padding(.trailing,350)
                .padding(.bottom, 700)
                
                
                TextField("Type your recpie:" , text:$recipes)
                    .padding()
                    .frame(width: 360, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
                
                
                Button("SAVE") {
                    
                }
                .foregroundColor(.black)
                .frame(width: 150, height: 51)
                .background(Color(red: 0.914, green: 0.742, blue: 0.225))
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding([.top, .leading], 160.0)
                
            }
        }
    }
    func buttonPressed() {
        print("Button pressed")
    }
    //}
    


struct addMyRecipes_Previews: PreviewProvider {
    static var previews: some View {
        addMyRecipes()
    }
}
