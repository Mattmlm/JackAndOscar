//
//  ThirteenthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class ThirteenthPageViewController: UIViewController {

    @IBOutlet weak var cowArmImageView: UIImageView!
//    var tapCount = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let armFallOffGesture = UITapGestureRecognizer(target: self, action: "armFallsOff")
        armFallOffGesture.numberOfTapsRequired = 10;
        self.cowArmImageView.addGestureRecognizer(armFallOffGesture)
        self.cowArmImageView.userInteractionEnabled = true;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        UIView.animateKeyframesWithDuration(2, delay: 0, options: UIViewKeyframeAnimationOptions.CalculationModeLinear, animations: { () -> Void in
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.001, animations: { () -> Void in
                self.cowArmImageView.transform = CGAffineTransformTranslate(self.cowArmImageView.transform, -45, 85)
                self.cowArmImageView.transform = CGAffineTransformRotate(self.cowArmImageView.transform, (CGFloat)(50.0 * M_PI / 180.0));
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.1, relativeDuration: 1.0, animations: { () -> Void in
                self.cowArmImageView.transform = CGAffineTransformTranslate(self.cowArmImageView.transform, -45, -100)
                self.cowArmImageView.transform = CGAffineTransformRotate(self.cowArmImageView.transform, (CGFloat)(-50.0 * M_PI / 180.0));
            })
            
            }, completion: nil)
    }

    func armLowered() {
        self.cowArmImageView.transform = CGAffineTransformTranslate(self.cowArmImageView.transform, -45, 85)
        self.cowArmImageView.transform = CGAffineTransformRotate(self.cowArmImageView.transform, (CGFloat)(50.0 * M_PI / 180.0));
    }
    
    func armRaised() {
        self.cowArmImageView.transform = CGAffineTransformTranslate(self.cowArmImageView.transform, 50, 0)
    }
    
    // arm drops off
    func armFallsOff() {
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            self.cowArmImageView.transform = CGAffineTransformTranslate(self.cowArmImageView.transform, -450, 0);
            self.cowArmImageView.transform = CGAffineTransformRotate(self.cowArmImageView.transform, (CGFloat)(45.0 * M_PI / 180.0));
            
            // Restore the rotation point. This will fix your issue.
            self.cowArmImageView.transform = CGAffineTransformTranslate(self.cowArmImageView.transform, 450, 0);
            
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
