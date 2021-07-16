//
//  ViewController.swift
//  what flower
//
//  Created by ana thayna on 14/07/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet private weak var imageView: UIImageView?
    
    private let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .camera
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let userPickerImage = info[UIImagePickerController.InfoKey.editedImage]
        imageView?.image = userPickerImage as? UIImage
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func onTapCamera(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }

}
