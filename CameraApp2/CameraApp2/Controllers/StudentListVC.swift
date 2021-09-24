//
//  DataBaseVC.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import UIKit

class StudentListVC: UIViewController {
    
    @IBOutlet weak var studentTable: UITableView!
    
    var studentsData: [StudentEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fetch students from Core Data
        CoreDataManager.shared.fetchStudentsList {[weak self] studentList in
            self?.studentsData = studentList
            DispatchQueue.main.async {
                //table reloads in main for performance ?
                self?.studentTable.reloadData()
            }
        }
    }
}




extension StudentListVC: UITableViewDataSource{
    // Return the number of rows for the table.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsData.count
    }
    
    // Provide a cell object for each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCellID", for: indexPath) as! StudentTableViewCell
        
        let student = studentsData[indexPath.row]
        cell.textLabel?.text = student.name
        
        return cell
    }
    
}
