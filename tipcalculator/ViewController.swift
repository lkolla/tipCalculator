//
//  ViewController.swift
//  tipcalculator
//
//  Created by Rajesh Kolla on 7/4/16.
//  Copyright © 2016 walmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    
    
    @IBOutlet weak var tipTotalLabel: UILabel!
    
    @IBOutlet weak var billTotalLabel: UILabel!
    
    @IBOutlet weak var tipSelectionSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipTotalLabel.text = "$0.00"
        billTotalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

    @IBAction func billAmountAction(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let tipPercentage = tipPercentages[tipSelectionSegment.selectedSegmentIndex]
        
        
        
        let billAmount = (billAmountField.text! as NSString).doubleValue
        
        let tip = billAmount * tipPercentage
        let total = tip + billAmount
        
        tipTotalLabel.text = String(format: "$%.2f", tip)
        billTotalLabel.text = String(format: "$%.2f", total)
    }
}

