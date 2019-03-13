//
//  ViewController.swift
//  Day9_W2019_iOS_PList
//
//  Created by MacStudent on 2019-03-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.readInformationPlist()
        
        
    }

    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
           // print(dictionary!.description)
            
            let countryList = dictionary!["countries"] as! NSArray
            
            print(countryList[0])
            for c in countryList
            {
                print(c)
            }
            
            print("-------Employee List from PList File-----------")
            
            let employeeList = dictionary!["employees"] as! NSArray
            
            for e in employeeList
            {
                let emp = e as! NSDictionary
                print("Employee ID  : \(emp["eid"]!)")
                 print("Employee Name  :\(emp["enm"]!)")
                 print("Employee Salary:\(emp["salary"]!)")
                print("--------------------------------")
             
            }
            
        }
    }
    

}

