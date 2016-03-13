//
//  ThirdPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class ThirdPageViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var houseImageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var foregroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.hidden = true
        foregroundView.transform = CGAffineTransformMakeScale(2, 2)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.foregroundView.transform = CGAffineTransformMakeScale(1, 1)
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.textLabel.hidden = false
                    }, completion: nil)
            }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
