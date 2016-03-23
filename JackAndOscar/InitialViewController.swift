//
//  InitialViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/12/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit
import AVFoundation

class InitialViewController: UIViewController {
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destinationViewController = segue.destinationViewController as? ContainerViewController {
            destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
            fadeTransition = FadeTransition()
            destinationViewController.transitioningDelegate = fadeTransition
            fadeTransition.duration = 0.5
            if (sender as! String == "autoplay") {
                destinationViewController.isAutoPlayOn = true
            }
        }
    }
    
    @IBAction func onReadMyselfButton(sender: AnyObject) {
        performSegueWithIdentifier("goToStorytimeSegue", sender: "readMyself")
    }

    @IBAction func onAutoPlayButton(sender: AnyObject) {
        performSegueWithIdentifier("goToStorytimeSegue", sender: "autoplay")
    }
}
