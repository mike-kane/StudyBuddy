//
//  Signup1ViewController.swift
//  StudyBuddy
//
//  Created by Mike Kane on 3/21/16.
//  Copyright © 2016 Mike Kane. All rights reserved.
//

import UIKit

class Signup1ViewController: UIViewController {

    let yearsOfStudyOptions = ["Freshman", "Sophomore", "Junior", "Senior", "Graduate Student", "ph.D Student"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 

}

extension Signup1ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return yearsOfStudyOptions.count
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    
    
    

}
