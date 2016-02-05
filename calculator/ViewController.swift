//
//  ViewController.swift
//  calculator
//
//  Created by student on 2016-02-05.
//  Copyright © 2016 Peter Smith. All rights reserved.
//  This program does basic calculations with math using button input

import UIKit

class ViewController: UIViewController {

    //variables
    @IBOutlet weak var numberLabel: UILabel!
    var first = Double()
    var second = Double()
    var isTypingNumber = false
    var result = Double()
    var operation = ""

    
    //clears the view
    @IBAction func clearClicked(sender: AnyObject) {
        first = 0
        second = 0
        result = 0
        numberLabel.text = "0"
    }
    
    // recieves the numbers inputed by the user
    @IBAction func number(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber == true{
            numberLabel.text = numberLabel.text! + number!!
        }else {
            numberLabel.text = number
        }
        isTypingNumber = true
    }
    
    // receives the operand clicked to perform the calculation
    @IBAction func operation(sender: AnyObject) {
        isTypingNumber = false
        let text: String = numberLabel.text!
        first = Double(text)!
        operation = sender.currentTitle!!
    }
    
    //pulls actions and performs the calculation
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

