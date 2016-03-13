//
//  NineteenthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class NineteenthPageViewController: UIViewController {

    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var jackBellyView: UIImageView!
    @IBOutlet weak var speechView: UIImageView!
    @IBOutlet weak var ruffTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animateWithDuration(1.0, delay: 0, options: [.Repeat], animations: {
            self.jackBellyView.transform = CGAffineTransformMakeScale(1.1, 1.1)
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressJackBelly(sender: UIButton) {
        UIView.animateWithDuration(0.2, animations: {
            self.speechView.alpha = 1
            self.ruffTextView.alpha = 1
            }, completion: { (finished: Bool) -> Void in
                self.jackBellyView.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }
    
    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toTwentiethSegue", sender: nil)
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
