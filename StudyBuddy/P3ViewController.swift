//
//  P3ViewController.swift
//  StudyBuddy
//
//  Created by Mike Kane on 3/14/16.
//  Copyright © 2016 Mike Kane. All rights reserved.
//

import UIKit

class P3ViewController: UIViewController {
    
    
    @IBAction func beginButtonPressed(sender: UIButton) {
        let storyboard = UIStoryboard(name: "signup", bundle: nil)
        let controller = storyboard.instantiateViewControllerWithIdentifier("initialSignupViewController") as UIViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}
