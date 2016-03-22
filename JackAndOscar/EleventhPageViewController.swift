//
//  EleventhPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class EleventhPageViewController: UIViewController {
    @IBOutlet weak var dogPath: UIImageView!
    @IBOutlet weak var duckPath: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dogPath.hidden = true
        self.dogPath.alpha = 0
        self.duckPath.hidden = true
        self.duckPath.alpha = 0
        
        CurrentView.instance.setView(10, view: self)
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //path
        
        UIView.animateWithDuration(3.0, animations: { () -> Void in
            self.dogPath.hidden = false
            self.dogPath.alpha = 0.8
            }, completion: nil)
        
        UIView.animateWithDuration(3.0, animations: { () -> Void in
            self.duckPath.hidden = false
            self.duckPath.alpha = 0.8
            }, completion: nil)
        
        UIView.animateWithDuration(3.0, animations: { () -> Void in
            self.dogPath.hidden = false
            self.dogPath.alpha = 0
            }, completion: nil)
        
        UIView.animateWithDuration(3.0, animations: { () -> Void in
            self.duckPath.hidden = false
            self.duckPath.alpha = 0
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
