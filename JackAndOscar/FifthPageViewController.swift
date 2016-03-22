//
//  FifthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class FifthPageViewController: UIViewController {

    @IBOutlet weak var oscarImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oscarImageView.layer.position.x = 700
    }
    
    override func viewDidAppear(animated: Bool) {
        let animate = CABasicAnimation()
        animate.keyPath = "position.x"
        animate.fromValue = 700
        animate.toValue = 442
        animate.duration = 1
        
        animate.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        
        oscarImageView.layer.addAnimation(animate, forKey: "basic")
        
        oscarImageView.layer.position.x = 442
        
         CurrentView.instance.setView(4, view: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
