//
//  StorytimeViewController.swift
//  JackAndOscar
//
//  Created by Brenda Chung on 3/9/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class StorytimeViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                direction: .Forward,
                animated: true,
                completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newPageViewController("Second"),
            self.newPageViewController("Third"),
            self.newPageViewController("Fourth"),
            self.newPageViewController("Fifth"),
            self.newPageViewController("Sixth"),
            self.newPageViewController("Seventh"),
            self.newPageViewController("Eighth"),
            self.newPageViewController("Ninth"),
            self.newPageViewController("Tenth"),
            self.newPageViewController("Eleventh"),
            self.newPageViewController("Twelfth"),
            self.newPageViewController("Thirteenth"),
            self.newPageViewController("Fourteenth"),
            self.newPageViewController("Fifteenth"),
            self.newPageViewController("Sixteenth"),
            self.newPageViewController("Seventeenth"),
            self.newPageViewController("Eighteenth"),
            self.newPageViewController("Nineteenth"),
            self.newPageViewController("Twentieth"),
            self.newPageViewController("TwentyFirst")]
    }()
    
    private func newPageViewController(page: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewControllerWithIdentifier("\(page)PageViewController")
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

// MARK: UIPageViewControllerDataSource

extension StorytimeViewController: UIPageViewControllerDataSource {
    
    func pageViewController(pageViewController: UIPageViewController,
        viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
            guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
                return nil
            }
            
            let previousIndex = viewControllerIndex - 1
            
            guard previousIndex >= 0 else {
                return nil
            }
            
            guard orderedViewControllers.count > previousIndex else {
                return nil
            }
            
            return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController,
        viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
            guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
                return nil
            }
            
            let nextIndex = viewControllerIndex + 1
            let orderedViewControllersCount = orderedViewControllers.count
            
            guard orderedViewControllersCount != nextIndex else {
                return nil
            }
            
            guard orderedViewControllersCount > nextIndex else {
                return nil
            }
            
            return orderedViewControllers[nextIndex]
    }
}
