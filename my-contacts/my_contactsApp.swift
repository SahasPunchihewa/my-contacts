//
//  my_contactsApp.swift
//  my-contacts
//
//  Created by Sahas Punchihewa on 2024-11-08.
//

import SwiftUI

@main
struct my_contactsApp: App {
    
    @StateObject var controller = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, controller.container.viewContext)
        }
    }
}
