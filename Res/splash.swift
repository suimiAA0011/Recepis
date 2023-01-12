//
//  splash.swift
//  Res
//
//  Created by Salma on 10/01/2023.
//

import SwiftUI

struct splash: View { @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Rectangle() .fill(Color(red: 0.222, green: 0.409, blue: 0.495))
                .ignoresSafeArea()
            if isActive {
               ContentView()
                
            }
            else{
                ZStack{
                    
                    
                    
                    
                    
                    VStack{
                        Image("Recipeslogo1")
                            .font(.system(size:80))
                            .foregroundColor(.red)
                        
                        
                        
                            .scaleEffect(size)
                            .opacity(opacity)
                            .onAppear{withAnimation(.easeIn(duration: 1.2))
                                {
                                    self.size = 0.9
                                    self.opacity = 1.8
                                }
                            }
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 6.0){
                                    self.isActive = true
                                    
                                }}
                    }
                    .edgesIgnoringSafeArea(.all)
                    
                    
                }
            }
            
        }
    }
}

struct splash_Previews: PreviewProvider {
    static var previews: some View {
        splash()
    }
}
