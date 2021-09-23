//
//  SignUpVC.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import UIKit

class SignUpVC: UIViewController {
    
    //inputs
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var name: UITextField!
    
    //main
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //buttons
    @IBAction func signUpBtn(_ sender: Any) {
        let usrName = userName.text!
        let confirmPassword = confirmPassword.text!
        let password = passWord.text!
        let studentName = name.text!
        validateStudent(name:studentName,user:usrName, p1:password, p2:confirmPassword)
        
    }
    
    //validation and saving
    
    func validateStudent(name:String,user:String,p1:String,p2:String) {
        if p1 == p2 {
            StudentModel(name: user, pass: p1, userNme: user)
            
            
            
        }
        do
        {
            try CoreData.shared.saveContext()
            
            print("saved")
            
        } catch  {
            print("didnt save")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
