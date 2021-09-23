//
//  DataBaseVC.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import UIKit

class DataBaseVC: UIViewController { //TODO: why you given viewcontroller name "DataBaseVC" actually it's only showing students list right. So just change into StudentListVC
    
    
    
    @IBOutlet weak var StudentTable: UITableView! //TODO: use camelCase for variable name.
    
    var students : [StudentEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(students.count)
        fetchData()
        DispatchQueue.main.async {
            //table reloads in main for performance ?
            self.StudentTable.reloadData()
        }
        
    }
    
}




extension DataBaseVC: UITableViewDataSource{
    // Return the number of rows for the table.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return students.count
    }
    
    // Provide a cell object for each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StudentTableViewCell //TODO: change cell identifier name ito "StudentCellID"
        cell.textLabel?.text! = "hi"
        // Configure the cell’s contents.
        
        return cell
    }
    
}
