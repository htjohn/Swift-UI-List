//
//  Swift_UI_ListApp.swift
//  Swift UI List
//
//  Created by John N on 10/3/20.
//

import SwiftUI

@main
struct Swift_UI_ListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
