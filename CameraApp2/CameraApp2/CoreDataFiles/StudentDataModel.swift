//
//  StudentDataModel.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import Foundation

var studentsData : [StudentEntity]?
// A model is created for accessing table
func StudentModel(name:String, pass:String, userNme:String ) -> StudentEntity{
    
    let student = StudentEntity(context: CoreData.shared.persistentContainer.viewContext)
    student.name = name
    student.username = userNme
    student.password = pass
    
    return student
}

func fetchData()  {
    do {
        studentsData = try! CoreData.shared.persistentContainer.viewContext.fetch(StudentEntity.fetchRequest())
        
    }
    catch
    {
        
    }
}

