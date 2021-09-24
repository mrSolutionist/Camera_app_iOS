//
//  CameraViewController.swift
//  CameraApp2
//
//  Created by Robin George on 23/09/21.
//

import UIKit

class CameraViewController: UIViewController {
    
    
    @IBOutlet weak var camFrame: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func camBtn(_ sender: Any) {
        let picker =  UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker,animated: true)
    }
}


extension CameraViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        camFrame.image = image
        
        
    }
}


