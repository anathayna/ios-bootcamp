//
//  ViewController.swift
//  what flower
//
//  Created by ana thayna on 14/07/21.
//

import UIKit
import CoreML
import Vision
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet private weak var imageView: UIImageView?
    @IBOutlet private weak var label: UILabel?
    
    let wikipediaURL = "https://en.wikipedia.org/w/api.php"
    private let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .camera
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickerImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            guard let convertedCIImage = CIImage(image: userPickerImage) else { fatalError("cannot convert CIImage") }
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
            guard let classification = request.results?.first as? VNClassificationObservation else { fatalError("could not classify image") }
            self.navigationItem.title = classification.identifier
            self.requestInfo(flowerName: classification.identifier)
        }
        
        let handler = VNImageRequestHandler(ciImage: image)
        
        do {
            try handler.perform([request])
        }
        
        catch {
            print(error)
        }
    }
    
    func requestInfo(flowerName: String) {
        let params : [String:String] = [
            
            "format" : "json",
            "action" : "query",
            "prop"   : "extracts",
            "exintro" : "",
            "explaintext" : "",
            "titles"  : flowerName,
            "indexpageids" : "",
            "redirects" : "1"
        
        ]
        
        Alamofire.request(wikipediaURL, method: .get, parameters: params).responseJSON { (response) in
            if response.result.isSuccess {
                print("got the wikipedia info")
                print(JSON(response.result.value))
                
                let flowerJSON : JSON = JSON(response.result.value)
                let pageid = flowerJSON["query"]["pageids"][0].stringValue
                let flowerDescription = flowerJSON["query"]["pages"][pageid]["extract"].stringValue
                
                self.label?.text = flowerDescription
            }
        }
    }
    
    @IBAction private func onTapCamera(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }

}
