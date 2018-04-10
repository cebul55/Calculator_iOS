//
//  ViewController.swift
//  Calculator
//
//  Created by Bartosz Cybulski on 29.03.2018.
//  Copyright © 2018 Bartosz Cybulski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myCalculator: MyMathModel = MyMathModel()
    
    @IBOutlet weak var MyLabel: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        if myCalculator.performEquation == true {
            MyLabel.text = String(sender.tag - 1)
            myCalculator.numberOnScreen = Double(MyLabel.text!)!
            myCalculator.performEquation = false
        }
        else{
            MyLabel.text = MyLabel.text! + String(sender.tag - 1)
            //print(MyLabel.text!)
            myCalculator.numberOnScreen = Double(MyLabel.text!)!
            

        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if MyLabel.text != "" && sender.tag != 11 && sender.tag != 16{
           
            myCalculator.previousNumber = Double(MyLabel.text!)!
            
            /*if sender.tag == 12 { //Divide
                MyLabel.text = "/"
            }
            
            if sender.tag == 13{ // Multiply
                MyLabel.text = "X"
            }
            
            if sender.tag == 14{ //Substract
                MyLabel.text = "-"
            }
            
            if sender.tag == 15 { //Add
                MyLabel.text = "+"
            }*/
            myCalculator.operation = sender.tag
            myCalculator.performEquation = true
        }
        else if sender.tag == 16{
            if myCalculator.operation == 12{
                MyLabel.text = String( myCalculator.divide() )
            }
            else if myCalculator.operation == 13{
                MyLabel.text = String(myCalculator.multiply() )
            }
            else if myCalculator.operation == 14{
                MyLabel.text = String(myCalculator.substract() )
            }
            else if myCalculator.operation == 15{
                MyLabel.text = String(myCalculator.add() )
            }
        }
        else if sender.tag == 11{
            MyLabel.text = ""
            myCalculator.previousNumber = 0
            myCalculator.numberOnScreen = 0
            myCalculator.operation = 0
        }
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

