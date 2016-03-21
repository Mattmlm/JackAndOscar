//
//  CurrentPage.swift
//  JackAndOscar
//
//  Created by Ashkhen Sargsyan on 3/20/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class CurrentView: NSObject {
    
    static let instance = CurrentView()
    
    private var view: UIViewController?
    private var number: Int?
    
    func setView(number: Int, view: UIViewController) {
        self.number = number
        self.view = view
    }
    
    func getView() -> (number: Int, view: UIViewController) {
        return (number: self.number!, view: self.view!)
    }
}
