//
//  EighthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class EighthPageViewController: UIViewController {
    @IBOutlet weak var oscarEyelids: UIImageView!
    @IBOutlet weak var oscarArm: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toNinthSegue", sender: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
        UIView.animateKeyframesWithDuration(2.2, delay: 0.5, options: .Repeat, animations: { () -> Void in
            let originalOscarArmFrame = self.oscarArm.frame
            var raisedOscarArmFrame = originalOscarArmFrame
            raisedOscarArmFrame.origin.y = raisedOscarArmFrame.origin.y + 4
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.5, animations: { () -> Void in
                self.oscarArm.frame = raisedOscarArmFrame
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.5, animations: { () -> Void in
                self.oscarArm.frame = originalOscarArmFrame
            })
            }, completion: nil)
        
        
        UIView.animateKeyframesWithDuration(1.0, delay: 0.5, options: .Repeat, animations: { () -> Void in
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.5, animations: { () -> Void in
                self.oscarEyelids.hidden = true
            })
        
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.5, animations: { () -> Void in
            self.oscarEyelids.hidden = false
            })
            
            }, completion: nil)
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
