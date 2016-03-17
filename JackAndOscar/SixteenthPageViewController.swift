//
//  SixteenthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SixteenthPageViewController: UIViewController {

    @IBOutlet weak var jackView: UIImageView!
    @IBOutlet weak var oscarView: UIImageView!
    @IBOutlet weak var lucyView: UIImageView!
    @IBOutlet weak var jeremyView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let animateJack = CABasicAnimation()
        animateJack.keyPath = "position.x"
        animateJack.fromValue = -200
        animateJack.toValue = 132
        animateJack.duration = 1
        animateJack.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        jackView.layer.addAnimation(animateJack, forKey: "basic")
        jackView.layer.position.x = 132
        
        let animateLucy = CABasicAnimation()
        animateLucy.keyPath = "position.x"
        animateLucy.fromValue = 800
        animateLucy.toValue = 463
        animateLucy.duration = 1
        animateLucy.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        lucyView.layer.addAnimation(animateLucy, forKey: "basic")
        lucyView.layer.position.x = 463
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toSeventeenthSegue", sender:nil)
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
