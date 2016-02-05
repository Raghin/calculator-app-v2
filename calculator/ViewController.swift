//
//  ViewController.swift
//  calculator
//
//  Created by student on 2016-02-05.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    @IBOutlet weak var numberLabel: UILabel!
    var first = Double()
    var second = Double()
    var isTypingNumber = false
    var result = Double()
    var operation = ""

    
    //button clicked functions
    @IBAction func clearClicked(sender: AnyObject) {
        first = 0
        second = 0
        numberLabel.text = "0"
    }
    
    @IBAction func number(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber == true{
            numberLabel.text = numberLabel.text! + number!!
        }else {
            numberLabel.text = number
        }
        isTypingNumber = true
    }
    
    @IBAction func operation(sender: AnyObject) {
        isTypingNumber = false
        let text: String = numberLabel.text!
        first = Double(text)!
        operation = sender.currentTitle!!
    }
    
    @IBAction func calculateClicked(sender: AnyObject) {
        let text: String = numberLabel.text!
        second = Double(text)!
        if operation == "+"{
            result = first + second
        }
        else if operation == "-"{
            result = first - second
        }
        else if operation == "*"{
            result = first * second
        }
        else if operation == "/"{
            result = first / second
        }
        numberLabel.text = "\(result)"
        first = result
        second = 0
    }
    
    
    
}

