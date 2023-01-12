//
//  ResApp.swift
//  Res
//
//  Created by Salma on 09/01/2023.
//

import SwiftUI

@main
struct ResApp: App {
    @StateObject private var dtataController = DataController()
    var body: some Scene {
        WindowGroup {
            splash()
                .environment(\.managedObjectContext, dtataController.container.viewContext)
        }
    }
}
