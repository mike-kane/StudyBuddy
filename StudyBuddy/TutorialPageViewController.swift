//
//  TutorialPageViewController.swift
//  StudyBuddy
//
//  Created by Mike Kane on 3/14/16.
//  Copyright © 2016 Mike Kane. All rights reserved.
//

import UIKit

class TutorialPageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        delegate = self
        
        setViewControllers([getP1()], direction: .Forward, animated: false, completion: nil)
        
    }
    
    func getP1() -> P1ViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("TutorialPage1") as! P1ViewController
    }
    
    func getP2() -> P2ViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("TutorialPage2") as! P2ViewController
    }
    
    func getP3() -> P3ViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("TutorialPage3") as! P3ViewController
    }
}

//MARK: Setting UIPageViewController Datasource Protocol

extension TutorialPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKindOfClass(P3ViewController) {
            return getP2()
        } else if viewController.isKindOfClass(P2ViewController) {
            return getP1()
        } else {
            return nil
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKindOfClass(P1ViewController) {
            return getP2()
        } else if viewController.isKindOfClass(P2ViewController) {
            return getP3()
        } else {
            return nil
        }
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 3
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
}

