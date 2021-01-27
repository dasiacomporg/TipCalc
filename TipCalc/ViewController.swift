//
//  ViewController.swift
//  TipCalc
//
//  Created by Dasia scott on 1/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numberOfPersons: UILabel!
    @IBOutlet weak var totalPerPerson: UILabel!
    var currentValue : Int = 2
    var total: Double = 0.0
    var perPerson : Double = 0.0
    
    @IBAction func splitTabSlider(_ sender: UISlider) {
        // get number of people spliting the bill
        currentValue = Int(sender.value)
        numberOfPersons.text = "\(currentValue)"
        // calculate bill for each person
        perPerson = total / Double(currentValue)
       //update total per person amount label
        totalPerPerson.text = String(format:"$%.2f", perPerson)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text imput field input
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        total = bill + tip
        
        
        //update tip amount label
        tipAmountLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
   // @IBAction func splitTab(_ sender: Any) {
        //get bill amount from text imput field input
         //perPerson = total / currentValue
        //update per person label
        // totalPerPerson.text = String(format:"$%.2f", perPerson)
   // }
}

