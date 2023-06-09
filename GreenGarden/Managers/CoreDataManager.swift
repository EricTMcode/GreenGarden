//
//  CoreDataManager.swift
//  GreenGarden
//
//  Created by Eric on 08/06/2023.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "GreenGardenModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Failed to initialize Core Data \(error)")
            }
        }
        
        let directories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        print(directories[0])
    }
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func save() throws {
        do {
            try viewContext.save()
        } catch {
            print(error)
        }
    }
    
}
