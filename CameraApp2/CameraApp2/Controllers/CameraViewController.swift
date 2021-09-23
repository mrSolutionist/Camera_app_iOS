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
    
    @IBAction func usePhoto(_ sender: Any) {
        savePhoto()
    }
    
    func savePhoto()  {
        guard let image = camFrame.image else {return}
        UIImageWriteToSavedPhotosAlbum(image,self,#selector(imagePickerController(_:didFinishPickingMediaWithInfo:)),nil)
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
        camFrame.image = image
    }
    
    
}


