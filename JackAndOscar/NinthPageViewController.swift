//
//  NinthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class NinthPageViewController: UIViewController {
    @IBOutlet weak var jackArm: UIImageView!
    @IBOutlet weak var jackEyelids: UIImageView!
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.hidden = true
        textLabel.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //arm
        
        UIView.animateKeyframesWithDuration(2.0, delay: 0.5, options: .Repeat, animations: { () -> Void in
            let originalJackArmFrame = self.jackArm.frame
            var raisedJackArmFrame = originalJackArmFrame
            raisedJackArmFrame.origin.y = raisedJackArmFrame.origin.y + 5
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.2, animations: { () -> Void in
                self.jackArm.frame = raisedJackArmFrame
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.25, relativeDuration: 0.2, animations: { () -> Void in
                self.jackArm.frame = originalJackArmFrame
            })
            }, completion: nil)
    
        //blinking
        
        // JackEyelids must not be hidden, though you can't see it because of the alpha
        self.jackEyelids.hidden = false
        self.jackEyelids.alpha = 0
        
        UIView.animateKeyframesWithDuration(2.5, delay: 0.5, options: .Repeat, animations: { () -> Void in
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.001, animations: { () -> Void in
                self.jackEyelids.alpha = 1
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.001, relativeDuration: 0.001, animations: { () -> Void in
                self.jackEyelids.alpha = 0
            })
            
            }, completion: nil)
    
        //text
        
        UIView.animateWithDuration(2.5, animations: { () -> Void in
            self.textLabel.hidden = false
            self.textLabel.alpha = 1
            }, completion: nil)
    
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
