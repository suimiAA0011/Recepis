//
//  recipe.swift
//  Res
//
//  Created by Salma on 12/01/2023.
//

import SwiftUI

struct Recipe: View {
    @State var isshownhomee:Bool=false
    var body: some View {
        NavigationView() {
            ZStack {
                ZStack { RoundedRectangle(cornerRadius: 25)
                        . fill (Color(red: 0.222, green: 0.409, blue: 0.495))
                        . frame ( width:1120, height:260)

                                             . position ()
                                        
                                            . shadow ( radius: 3 )
                                            . edgesIgnoringSafeArea ( .all )
            
                            
                            
                            
                            Button(action:{
                                isshownhomee.toggle()
                            }) {Image(systemName: "chevron.backward")
                                    .foregroundColor(Color(red: 0.914, green: 0.742, blue: 0.225))
                            }.position(x:40,y:50)
                        .fullScreenCover(isPresented:$isshownhomee ){
    ContentView()
                          }
                            
                            
                            
                            
                    
                  
                    ZStack(alignment: .leading){
                                    Spacer()
                                Text("Bûche de Noël")
                                .position(x:190,y:100)
                                .padding()
                                Spacer()
                                        
                        Spacer()
                                    
                                    Image("buche-de-noel")
                                        .resizable()
                                        .frame(width: 420.0, height: 200.0)
                                        .padding(.bottom, 300.0)
                     Image(systemName: "heart")
                            .position(x:380,y:360)
                            .foregroundColor(.red)
                                ScrollView {
                                    Text("""
                        "Make the Chocolate Whipped Cream
                        Whip the cream, confectioners' sugar, cocoa, and vanilla until peaks form. Refrigerate until ready to use.

                                           Make the Cake Batter
                                           Beat the egg yolks and sugar until the yolks are pale. Add the cocoa powder, vanilla, and salt. In a separate bowl, whip egg yolks until soft peaks form, then add the sugar and beat until stiff peaks form. Fold the yolk mixture into the egg white mixture. Spread the batter onto a parchment-lined jelly roll pan.

                                           Bake and Roll
                                           Bake until the cake springs back when touched, then turn it out on a confectioners' sugar-coated dish towel. Roll the cake up with the towel and let it cool for 30 minutes.

                                           Fill the Cake
                                           Unroll the cooled cake and fill it with chocolate whipped cream. Roll it back up and refrigerate. Dust with confectioners' sugar or decorate the cake before serving.
                        """
                        )
                        .frame(width: 365, height: 500)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    .padding(.horizontal, 27.0)
                                }.padding(.top, 350.0)
                        Spacer()
                                }

                }
            }
        }
                    
                    
            }
        }

        
            


struct recipe_Previews: PreviewProvider {
    static var previews: some View {
        Recipe()
    }
}
