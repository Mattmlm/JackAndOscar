//
//  FifteenthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class FifteenthPageViewController: UIViewController {

    @IBOutlet weak var houseTreesView: UIView!
    @IBOutlet weak var landView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.hidden = true
        houseTreesView.transform = CGAffineTransformMakeScale(0.8, 0.8)
        CurrentView.instance.setView(14, view: self)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.houseTreesView.transform = CGAffineTransformMakeScale(1.3, 1.3)
            self.landView.transform = CGAffineTransformMakeScale(1.1, 1.1)
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
    

    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toSixteenthSegue", sender: nil)
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
