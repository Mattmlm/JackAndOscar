//
//  FourthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class FourthPageViewController: UIViewController {

    @IBOutlet weak var rainImageView: UIImageView!
    
    var image_1: UIImage!
    var image_2: UIImage!
    var image_3: UIImage!
    var image_4: UIImage!
    var image_5: UIImage!
    var image_6: UIImage!
    
    var images: [UIImage]!
    
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image_1 = UIImage(named: "dog_rain_1")
        image_2 = UIImage(named: "dog_rain_2")
        image_3 = UIImage(named: "dog_rain_3")
        image_4 = UIImage(named: "dog_rain_4")
        image_5 = UIImage(named: "dog_rain_5")
        image_6 = UIImage(named: "dog_rain_6")

        images = [image_1, image_2, image_3, image_4, image_5, image_6]
        animatedImage = UIImage.animatedImageWithImages(images, duration:0.6)
        
        rainImageView.image = animatedImage
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
