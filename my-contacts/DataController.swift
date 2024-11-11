//
//  DataController.swift
//  my-contacts
//
//  Created by Sahas Punchihewa on 2024-11-08.
//

import Foundation
import CoreData


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ContactsDataModel")
    
    init () {
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Something went wrong when loading data: \(error)")
            }
        }
    }
}
