//
//  SixthPageViewController.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/6/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SixthPageViewController: UIViewController {

    @IBOutlet weak var duckEyeImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        duckEyeImageView.hidden = true

         CurrentView.instance.setView(5, view: self)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onDuckTap(sender: UITapGestureRecognizer) {
        if duckEyeImageView.hidden == false {
            duckEyeImageView.hidden = true
        } else {
            duckEyeImageView.hidden = false
        }
        
    }
}
