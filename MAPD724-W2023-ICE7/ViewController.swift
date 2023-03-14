//
//  ViewController.swift
//  MAPD724-W2023-ICE7
//
//  Created by Po Lam Wong on 14/3/2023.
//

import UIKit
import GLKit

class ViewController: UIViewController {
 @IBOutlet weak var myLabel: UILabel!
 @IBOutlet weak var myTextField: UITextField!
 @IBOutlet weak var myImageView: UIImageView!
 
 override func viewDidLoad() {
  super.viewDidLoad()
  
  let rotateMe = GLKMathDegreesToRadians(45)
  
  UIView.animate(withDuration: 3.4, delay: 2.3,
  options: [.repeat, .autoreverse], animations: {
      self.myLabel.alpha = 0.0
      self.myLabel.backgroundColor = UIColor.lightGray
      self.myLabel.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
  }, completion: nil)
  
  UIView.animate(withDuration: 3.5, delay: 0.45,
  options: [.repeat, .autoreverse], animations: {
      self.myTextField.transform = CGAffineTransform(rotationAngle: CGFloat(-rotateMe))
  }, completion: nil)
    
  UIView.animate(withDuration: 2.5, delay: 1.5,
  options: [.repeat, .autoreverse], animations: {
      self.myImageView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
  }, completion: nil)
 }
 
 override func viewWillAppear(_ animated: Bool) {
     myLabel.center.x -= view.bounds.width
     myTextField.center.x -= view.bounds.width
     myImageView.center.x -= view.bounds.width
 }
}

