//
//  ViewController.swift
//  FirstDemo
//
//  Created by Muneeb Sheikh on 1/7/16.
//  Copyright © 2016 Muneeb Sheikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var simpleLabel: UILabel!
    @IBOutlet weak var simpleTextField: UITextField!
    
    @IBAction func changeName(sender: AnyObject) {
        simpleLabel.text = "Hello, " + simpleTextField.text! + "!";
        self.simpleTextField.resignFirstResponder();
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func refreshTime(sender: AnyObject) {
        let now = NSDate();
        var formatter = NSDateFormatter();
        formatter.dateFormat = "HH:mm a";
        
        timeLabel.text = formatter.stringFromDate(now);
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return false;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

