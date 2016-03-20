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
    @IBOutlet weak var treeView: UIImageView!
    @IBOutlet weak var JackView: UIImageView!
    @IBOutlet weak var friendsView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.catSpeech.alpha = 0
        self.catText.alpha = 0
        self.pigSpeech.alpha = 0
        self.pigText.alpha = 0
        self.duckSpeech.alpha = 0
        self.duckText.alpha = 0
        self.JackView.alpha = 0

    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.2, delay: 1.0, options: [], animations: {
            self.catSpeech.alpha = 1
            self.catText.alpha = 1
            self.pigSpeech.alpha = 1
            self.pigText.alpha = 1
            self.duckSpeech.alpha = 1
            self.duckText.alpha = 1
            }, completion: { (finished: Bool) -> Void in
                self.showEnding()
        })
        
    }
    
    func showEnding() {
        
        UIView.animateWithDuration(0.4, delay: 3.0, options: [], animations: {
            self.catSpeech.alpha = 0
            self.catText.alpha = 0
            self.pigSpeech.alpha = 0
            self.pigText.alpha = 0
            self.duckSpeech.alpha = 0
            self.duckText.alpha = 0
            }, completion: { (finished: Bool) -> Void in
                
        })
        
        UIView.animateWithDuration(0.4, delay: 4.0, options: [], animations: {
                
                self.JackView.alpha = 1
                let animateJack = CABasicAnimation()
                animateJack.keyPath = "position.x"
                animateJack.fromValue = -150
                animateJack.toValue = 170
                animateJack.duration = 4
                animateJack.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
                self.JackView.layer.addAnimation(animateJack, forKey: "basic")
                    self.JackView.layer.position.x = 170
            
            }, completion: { (finished: Bool) -> Void in
                
        })



        
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNextButton(sender: AnyObject) {
        performSegueWithIdentifier("toTwentyFirstSegue", sender: nil)
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
