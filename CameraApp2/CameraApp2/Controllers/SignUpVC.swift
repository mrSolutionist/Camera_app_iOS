//
//  SignUpVC.swift
//  CameraApp2
//
//  Created by Robin George on 22/09/21.
//

import UIKit

class SignUpVC: UIViewController {
    
    /* //TODO: Please change IBOutlet variable names into more specific to it's type
    what is password? is it a string? lable? or Textfield? so add it's type at the end.
    ex: comfirmPassword -> comfirmPasswordTxtField, password -> passwordTxtField, like nameTxtField, userNameTxtField.
    */
    //inputs
    @IBOutlet weak var confirmPasswordField: UITextField!
    @IBOutlet weak var passWordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var nameField: UITextField! 


    
    //main
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    //buttons
    @IBAction func signUpBtn(_ sender: Any) {
        let usrName = userNameField.text!
       
        let confirmPassword = confirmPasswordField.text!
        let password = passWordField.text!
        let studentName = nameField.text!
        validateStudent(name:studentName,user:usrName, p1:password, p2:confirmPassword)
    }
    
    
 
    //validation and saving by passing arguments from signUP view controller after button press
    func validateStudent(name:String,user:String,p1:String,p2:String) {
        if p1 == p2 {
            
            //calling passing arg to studentModel created in studentData model.
            studentModel(name: user, pass: p1, userNme: user)
                    }
    }
    
    
}
