//
//  CoreDataManager.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import Foundation
import CoreData


class CoreData{ 
    
    static  let shared = CoreData()
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "CameraApp2")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
            
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    
    // MARK: - Core Data Saving support
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            print(context)
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

// studentData





// A model is created for accessing table
func studentModel(name:String, pass:String, userNme:String ){
    
    let student = StudentEntity(context: CoreData.shared.persistentContainer.viewContext)
    student.name = name
    student.username = userNme
    student.password = pass
    try! CoreData.shared.persistentContainer.viewContext.save()
    
}


//function for calling fetch method from database with core data (not working)


