//
//  TreeApp.swift
//  Tree
//
//  Created by Константин Лопаткин on 04.10.2023.
//

import SwiftUI

@main
struct TreeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
