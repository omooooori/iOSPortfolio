//
//  AnimationViewController.swift
//  VariousFunctionPlayGround
//
//  Created by ryosshim on 2024/03/26.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonTapped(sender: UIButton) {
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }
        
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        } completion: { _ in
//            // Go back to original position.
//            self.imageView.transform = CGAffineTransform.identity
//        }
        
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        } completion: { Bool in
//            UIView.animate(withDuration: 1.0) {
//                self.imageView.transform = CGAffineTransform.identity
//            }
//        }
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .curveLinear) {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 100)
        } completion: { _ in
            UIView.animate(withDuration: 1.0) {
                self.imageView.transform = CGAffineTransform.identity
            }
        }
    }

}
