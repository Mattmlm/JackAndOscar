//
//  FourteenthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class FourteenthPageViewController: UIViewController {

    @IBOutlet weak var hillOne: UIImageView!
    @IBOutlet weak var hillTwo: UIView!
    @IBOutlet weak var hillThree: UIView!
    @IBOutlet weak var house: UIImageView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.house.hidden = true
        self.house.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        animateHills()
    }
    
    func animateHills () {
        self.hillOne.center.y = 400
        self.hillTwo.center.y = 300
        self.hillThree.center.y = 400
        
        UIView.animateWithDuration(0.5){
            self.hillOne.center.y = 340
        }
        UIView.animateWithDuration(0.4){
            self.hillTwo.center.y = 254
        }
        UIView.animateWithDuration(0.3){
            self.hillThree.center.y = 256
        }
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            self.house.hidden = false
            self.house.alpha = 1
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
