//
//  SecondPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SecondPageViewController: UIViewController {    
    @IBOutlet weak var eyesImageView: UIImageView!
    
    var image_1: UIImage!
    var image_2: UIImage!
    var image_3: UIImage!
    var image_4: UIImage!
    
    var images: [UIImage]!
   
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image_1 = UIImage(named: "transparent")
        image_2 = UIImage(named: "jack2Eyelids_halfopen")
        image_3 = UIImage(named: "jack2Eyelids_halfopen_2")
        image_4 = UIImage(named: "jack2Eyelids")
        
        images = [image_1, image_2, image_3, image_4]
        animatedImage = UIImage.animatedImageWithImages(images, duration:0.6)
        
        CurrentView.instance.setView(1, view: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDismissTap(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onDogTap(sender: AnyObject) {
        
        eyesImageView.image = animatedImage
        Utils().delay(1.0) {
            self.eyesImageView.image = nil
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
