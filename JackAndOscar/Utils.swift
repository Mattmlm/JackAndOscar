//
//  Utils.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/13/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class Utils  {
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }


}
