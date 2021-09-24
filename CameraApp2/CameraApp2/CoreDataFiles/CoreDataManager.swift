//
//  CoreDataManager.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import Foundation
import CoreData


class CoreDataManager {
    
    static let shared = CoreDataManager()

    private init(){}
    
    lazy var persistentContainer: NSPersistentContainer = {
     
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
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func addNewStudentWith(name:String, pass:String, userNme:String, completion: @escaping (Bool) -> Void ){

        let student = StudentEntity(context: persistentContainer.viewContext)
            student.name = name
            student.username = userNme
            student.password = pass
            saveContext()
            completion(true)
                
//        let student =  NSEntityDescription.insertNewObject(forEntityName: "StudentEntity", into: context )
//        student.setValue(name, forKey: "name")
//        student.setValue(pass, forKey: "password")
//        student.setValue(userNme, forKey: "username")
//        try! context.save()
    }
    
    func fetchStudentsList(completion: @escaping ([StudentEntity]) -> Void)  {
        do {
            let studentsData: [StudentEntity] = try persistentContainer.viewContext.fetch(StudentEntity.fetchRequest())
            completion(studentsData)
        }
        catch {
            fatalError(error.localizedDescription)
        }

    }
}



