//
//  DataBaseVC.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import UIKit

class DataBaseVC: UIViewController {
    
    
    
    @IBOutlet weak var StudentTable: UITableView!
    
    var students : [StudentEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(students.count)
        
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StudentTableViewCell
        cell.textLabel?.text! = "hi"
        // Configure the cell’s contents.
        
        return cell
    }
    
}
