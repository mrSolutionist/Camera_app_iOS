//
//  DataBaseVC.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import UIKit

class StudentListVC: UIViewController {
    
    

    
    @IBOutlet weak var studentTable: UITableView!
    
    var studentsData : [StudentEntity]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Student Table"
        print(studentsData?.count)
    fetchData()
        DispatchQueue.main.async {
            //table reloads in main for performance ?
            self.studentTable.reloadData()
        }
        
    }
    
}




extension StudentListVC: UITableViewDataSource{
    // Return the number of rows for the table.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(studentsData?.count)
        return studentsData?.count ?? 0
    }
    
    // Provide a cell object for each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCellID", for: indexPath) as! StudentTableViewCell 
        cell.textLabel?.text = "hi"
        // Configure the cell’s contents.
        
        return cell
    }
    
}
