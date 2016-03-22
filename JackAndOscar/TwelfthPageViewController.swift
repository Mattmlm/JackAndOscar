//
//  TwelfthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class TwelfthPageViewController: UIViewController {
    @IBOutlet weak var flashlight: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        flashlight.alpha = 0
        CurrentView.instance.setView(11, view: self)
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //flashlight
        
        UIView.animateKeyframesWithDuration(15.0, delay: 0.5, options: .Repeat, animations: { () -> Void in
            let originalFlashlightFrame = self.flashlight.frame
            var movedFlashlightFrame = originalFlashlightFrame
            movedFlashlightFrame.origin.x = movedFlashlightFrame.origin.x + 15
            
            
            UIView.addKeyframeWithRelativeStartTime(1.0, relativeDuration: 1.0, animations: { () -> Void in
                self.flashlight.frame = movedFlashlightFrame
            })
            
            UIView.addKeyframeWithRelativeStartTime(1.0, relativeDuration: 2.0, animations: { () -> Void in
                self.flashlight.frame = originalFlashlightFrame
            })
            
            UIView.animateWithDuration(2.5, animations: { () -> Void in
                self.flashlight.hidden = false
                self.flashlight.alpha = 1
                }, completion: nil)
            
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
