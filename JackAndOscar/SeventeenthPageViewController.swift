//
//  SeventeenthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SeventeenthPageViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var jackView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CurrentView.instance.setView(16, view: self)

        scrollView.contentSize = CGSize(width: 1334, height: 375)
        
        UIView.animateWithDuration(5.0, delay: 5.0, options: [], animations: {
            self.scrollView.contentOffset = CGPointMake(667, 0);
            
            let animate = CABasicAnimation()
            animate.keyPath = "position.x"
            animate.fromValue = 258
            animate.toValue = 900
            animate.duration = 3
            animate.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            self.jackView.layer.addAnimation(animate, forKey: "basic")
            self.jackView.layer.position.x = 900
            }, completion: { (finished: Bool) -> Void in
        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toEighteenthSegue", sender: nil)
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
