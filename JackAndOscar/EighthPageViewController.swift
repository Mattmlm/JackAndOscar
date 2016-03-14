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
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.oscarEyelids.hidden = false
        self.oscarEyelids.alpha = 0
        textLabel.hidden = true
        textLabel.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
        //arm
        
        UIView.animateKeyframesWithDuration(2.2, delay: 0.5, options: .Repeat, animations: { () -> Void in
            let originalOscarArmFrame = self.oscarArm.frame
            var raisedOscarArmFrame = originalOscarArmFrame
            raisedOscarArmFrame.origin.y = raisedOscarArmFrame.origin.y + 6
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.5, animations: { () -> Void in
                self.oscarArm.frame = raisedOscarArmFrame
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.5, animations: { () -> Void in
                self.oscarArm.frame = originalOscarArmFrame
            })
            }, completion: nil)
        
        //text
        
            UIView.animateWithDuration(2.5, animations: { () -> Void in
                self.textLabel.hidden = false
                self.textLabel.alpha = 1
            }, completion: nil)
        
        
        //blinking
        
        UIView.animateKeyframesWithDuration(4, delay: 0.5, options: .Repeat, animations: { () -> Void in
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.001, animations: { () -> Void in
                self.oscarEyelids.alpha = 1
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.001, relativeDuration: 0.001, animations: { () -> Void in
                self.oscarEyelids.alpha = 0
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.002, relativeDuration: 0.001, animations: { () -> Void in
                self.oscarEyelids.alpha = 1
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.003, relativeDuration: 0.001, animations: { () -> Void in
                self.oscarEyelids.alpha = 0
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
