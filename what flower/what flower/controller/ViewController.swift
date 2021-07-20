//
//  ViewController.swift
//  what flower
//
//  Created by ana thayna on 14/07/21.
//

import UIKit
import CoreML
import Vision

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
        if let userPickerImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            guard let convertedCIImage = CIImage(image: userPickerImage) else { fatalError("cannot convert CGImage") }
            detec(image: convertedCIImage)
            imageView?.image = userPickerImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    func detec(image: CIImage) {
        guard let model = try? VNCoreMLModel(for: FlowerClassifier().model) else {
            fatalError("cannot import model")
        }
        
        let request = VNCoreMLRequest(model: model) { (request, error) in
            let classification = request.results?.first as? VNClassificationObservation
            self.navigationItem.title = classification?.identifier
        }
        
        let handler = VNImageRequestHandler(ciImage: image)
        
        do {
            try handler.perform([request])
        }
        
        catch {
            print(error)
        }
    }
    
    @IBAction private func onTapCamera(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }

}
