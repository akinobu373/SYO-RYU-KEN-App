//
//  ViewController.swift
//  SYO-RYU-KEN App
//
//  Created by 美並　明伸 on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {
    
    var imageArrayAttak : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        while let attakImage = UIImage(named: "attak\(imageArrayAttak.count+1)") {
            imageArrayAttak.append(attakImage)
        }
        
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func tapImageButton(_ sender: Any) {
        imageView.animationImages = imageArrayAttak
        imageView.animationDuration = 3
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}



