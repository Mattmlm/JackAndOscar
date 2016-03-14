//
//  TwentiethPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class TwentiethPageViewController: UIViewController {

    @IBOutlet weak var catSpeech: UIImageView!
    @IBOutlet weak var pigSpeech: UIImageView!
    @IBOutlet weak var duckSpeech: UIImageView!
    
    @IBOutlet weak var duckText: UITextView!
    @IBOutlet weak var pigText: UITextView!
    @IBOutlet weak var catText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toTwentyFirstSegue", sender: nil)
    }
    
    @IBAction func didPressCat(sender: UIButton) {
        UIView.animateWithDuration(0.2, animations: {
            self.catSpeech.alpha = 1
            self.catText.alpha = 1
            self.pigSpeech.alpha = 0
            self.pigText.alpha = 0
            self.duckSpeech.alpha = 0
            self.duckSpeech.alpha = 0
            }, completion: { (finished: Bool) -> Void in
        })
    }

    @IBAction func didPressPig(sender: UIButton) {
        UIView.animateWithDuration(0.2, animations: {
            self.pigSpeech.alpha = 1
            self.pigText.alpha = 1
            self.catSpeech.alpha = 0
            self.catText.alpha = 0
            self.duckSpeech.alpha = 0
            self.duckSpeech.alpha = 0
            }, completion: { (finished: Bool) -> Void in
        })
    }
    
    @IBAction func didPressDuck(sender: UIButton) {
        UIView.animateWithDuration(0.2, animations: {
            self.duckSpeech.alpha = 1
            self.duckSpeech.alpha = 1
            self.catSpeech.alpha = 0
            self.catText.alpha = 0
            self.pigSpeech.alpha = 0
            self.pigText.alpha = 0
            }, completion: { (finished: Bool) -> Void in
        })
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
