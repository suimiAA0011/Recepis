//
//  DataController.swift
//  Res
//
//  Created by Salma on 12/01/2023.
//

import CoreData
import Foundation

class DataController : ObservableObject{
    let container = NSPersistentContainer(name: "book")
    init() {
        container.loadPersistentStores { descriptoin, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")}}}
}
