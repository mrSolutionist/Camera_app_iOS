//
//  DeligateVC1.swift
//  CameraApp2
//
//  Created by Robin George on 25/09/21.
//

import UIKit

class DeligateVC1: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickBtn(_ sender: Any) {
        
        let secondVc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! DeligateVC2
        
        secondVc.sendTextDeligate = self
        present(secondVc, animated: true, completion: nil)
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

extension DeligateVC1 : DataTransferDelegate{
    func sendText(text: String) {
        textLabel.text = text
    }
    
    
}
