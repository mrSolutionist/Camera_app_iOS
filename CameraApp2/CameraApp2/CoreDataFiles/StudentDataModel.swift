//
//  StudentDataModel.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import Foundation

// creating an array of of StudentEnitity
var studentsData : [StudentEntity]?



//TODO: WHY BELOW TWO METHODS ARE WRITTEN HERE?. it's belongs to coredata manager so move this functionality to CoreDataManagerClass
// A model is created for accessing table
func StudentModel(name:String, pass:String, userNme:String ){
    
    let student = StudentEntity(context: CoreData.shared.persistentContainer.viewContext)
    student.name = name
    student.username = userNme
    student.password = pass
    CoreData.shared.saveContext()
}


//function for calling fetch method from database with core data (not working)
func fetchData()  {
    do {
        studentsData = try CoreData.shared.persistentContainer.viewContext.fetch(StudentEntity.fetchRequest())
    }
    catch{}
    
}

