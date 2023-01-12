//
//  model.swift
//  Res
//
//  Created by Salma on 11/01/2023.
//

import Foundation
struct Likes : Identifiable,Codable{
    var id : Int
    var name : String
    var image : String
    var isFaved : Bool
    
    
//    static var sampleItems : [Likes]{
//        var tempList = [Likes]()
//
//        for i in 1...5{
//            let id = i
//            let name = ""
//            let image = ""
//            tempList.append(Likes(id : id,name: name, image: image, isFaved: false))
//
//
//
//        }
//        return tempList
//    }
//
    
}
class ArrayModificationViewModel1 : ObservableObject {
    
    @Published var dataArray: [Likes] = []
    @Published var filterArray: [Likes] = []
   
    static var sampleItems : [Likes]{
        var tempList = [Likes]()
        
        tempList.append(Likes(id:4,name: "buche-de-noel",image: "buche-de-noel", isFaved: true))
        tempList.append(Likes(id:1,name: "creamy-tuscan-chicken‏", image: "creamy-tuscan-chicken‏", isFaved: true))
        tempList.append(Likes(id:2,name: "pasta", image: "pasta", isFaved: false))
        tempList.append(Likes(id:3,name: "cake",image: "cake", isFaved: true))
        tempList.append(Likes(id:5,name: "baked-gnocchi", image: "baked-gnocchi", isFaved: false))
//        for i in 1...5{
//            let id = i
//            let name = ""
//            let image = ""
//            tempList.append(Likes(id : id,name: name, image: image, isFaved: false))
//
//
//
//        }
       return tempList
    }
    
//    init() {
//        getRecipes()
//
//    }
//    static var sampleItems : [Likes]{
//        var tempList = [Likes]()
//
//        for i in 1...5{
//            let id = i
//            let name = ""
//            let image = ""
//            tempList.append(Likes(id : id,name: name, image: image, isFaved: false))
//
//
//
//        }
//        return tempList
//    }
//

//    func getRecipes () {
//        
//        let recipe1 = Likes(id:1,name: "creamy-tuscan-chicken‏", image: "creamy-tuscan-chicken‏", isFaved: true)
//        let recipe2 =  Likes(id:2,name: "pasta", image: "pasta", isFaved: false)
//        let recipe3 =  Likes(id:3,name: "cake",image: "cake", isFaved: true)
//        let recipe4 = Likes(id:4,name: "buche-de-noel",image: "buche-de-noel", isFaved: true)
//        let recipe5 = Likes(id:5,name: "baked-gnocchi", image: "baked-gnocchi", isFaved: false)
//        
//        self.dataArray.append(contentsOf: [
//        recipe1,
//        recipe2,
//        recipe3,
//        recipe4,
//        recipe5,
//       
//        
//        ])
//        
//        
//    }
}

    
    

