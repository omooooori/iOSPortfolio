//
//  ImageFilterViewController.swift
//  VariousFunctionPlayGround
//
//  Created by ryosshim on 2024/03/28.
//

import UIKit

class ImageFilterViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var segmentControl: UISegmentedControl!
    
    let monoFilter = CIFilter(name: "CIPhotoEffectMono")!
    let blurFilter = CIFilter(name: "CIBoxBlur")!
    let context = CIContext(options: nil)
    
    var originalImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        originalImage = imageView.image
        if let image = imageView.image {
            imageView.image = applyFilter(filter: monoFilter, to: image)
        }
    }
    
    @IBAction func onSegmentChanged(sender: UISegmentedControl) {
        guard let image = originalImage else { return }
        
        switch sender.selectedSegmentIndex {
        case 0:
            imageView.image = applyFilter(filter: monoFilter, to: image)
        default:
            imageView.image = applyFilter(filter: blurFilter, to: image)
        }
    }
    
    private func applyFilter(filter: CIFilter, to inputImage: UIImage) -> UIImage? {
        guard let ciImage = CIImage(image: inputImage) else { return nil }
        
        filter.setDefaults()
        filter.setValue(ciImage, forKey: kCIInputImageKey)
        
        guard let outputCIImage = filter.outputImage else { return nil }
        guard let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else { return nil }
        return UIImage(cgImage: cgImage)
    }
}
