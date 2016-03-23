//
//  P3ViewController.swift
//  StudyBuddy
//
//  Created by Mike Kane on 3/14/16.
//  Copyright © 2016 Mike Kane. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class P3ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: FBSDKLoginButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}

extension P3ViewController: FBSDKLoginButtonDelegate {
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if error == nil {
            print("logged in successfully")
        } else {
            print(error.localizedDescription)
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("logged out!")
    }
}
