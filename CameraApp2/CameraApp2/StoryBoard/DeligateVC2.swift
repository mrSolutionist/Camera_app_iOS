//
//  DeligateVC2.swift
//  CameraApp2
//
//  Created by Robin George on 25/09/21.
//

import UIKit


protocol DataTransferDelegate{
    func sendText(text:String)
}

class DeligateVC2: UIViewController {
    //cerated a type
    var sendTextDeligate : DataTransferDelegate!
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        
        let text = textField.text!
        sendTextDeligate.sendText(text: text)
        self.dismiss(animated: true, completion: nil)
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
