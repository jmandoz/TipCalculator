//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jason Mandozzi on 7/15/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var calculatedTipLabel: UILabel!
    @IBOutlet weak var numberOfPeopleTextField: UITextField!
    @IBOutlet weak var pricePerPersonLabel: UILabel!
    @IBOutlet weak var tipCalculatorLabel: UILabel!
    @IBOutlet weak var enterBillTextLabel: UILabel!
    @IBOutlet weak var resultTextLabel: UILabel!
    @IBOutlet weak var splitBetweenTextLabel: UILabel!
    @IBOutlet weak var numberOfPeopleTextLabel: UILabel!
    @IBOutlet weak var pricePerTextLabel: UILabel!

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipTextLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tenPercentButtonTapped(_ sender: Any) {
       calculateTenPercentTip()
    }
    
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        calculateFifteenPercentTip()
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        calculateTwentyPercentTip()
    }
    
    @IBAction func twentyFivePercentButtonTapped(_ sender: Any) {
        calculateTwentyFivePercentTip()
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        splitBill()
    }
    
    
    func calculateTenPercentTip() {
        if let bill = Double(billTextField.text!) {
            TipCalculator.bill = bill
            let tip = TipCalculator.bill * 0.10
            TipCalculator.billWithTip = tip + TipCalculator.bill
            tipLabel.text = "\(rounding(tip, toNearest: 0.01))"
        } else {
            calculatedTipLabel.text = "not a number"
        }
        calculatedTipLabel.text = "\(rounding(TipCalculator.billWithTip, toNearest: 0.01))"
    }
    
    func calculateFifteenPercentTip() {
        if let bill = Double(billTextField.text!) {
            TipCalculator.bill = bill
            let tip = TipCalculator.bill * 0.15
            TipCalculator.billWithTip = tip + TipCalculator.bill
            tipLabel.text = "\(rounding(tip, toNearest: 0.01))"
        } else {
            calculatedTipLabel.text = "not a number"
        }
        calculatedTipLabel.text = "\(rounding(TipCalculator.billWithTip, toNearest: 0.01))"
    }
    
    func calculateTwentyPercentTip() {
        if let bill = Double(billTextField.text!) {
            TipCalculator.bill = bill
            let tip = TipCalculator.bill * 0.20
            TipCalculator.billWithTip = tip + TipCalculator.bill
            tipLabel.text = "\(rounding(tip, toNearest: 0.01))"
        } else {
            calculatedTipLabel.text = "not a number"
        }
        calculatedTipLabel.text = "\(rounding(TipCalculator.billWithTip, toNearest: 0.01))"
    }
    
    func calculateTwentyFivePercentTip() {
        if let bill = Double(billTextField.text!) {
            TipCalculator.bill = bill
            let tip = TipCalculator.bill * 0.25
            TipCalculator.billWithTip = tip + TipCalculator.bill
            tipLabel.text = "\(rounding(tip, toNearest: 0.01))"
        } else {
            calculatedTipLabel.text = "not a number"
        }
        calculatedTipLabel.text = "\(rounding(TipCalculator.billWithTip, toNearest: 0.01))"
    }
    
    func splitBill() {
        if let people = Double(numberOfPeopleTextField.text!) {
            TipCalculator.numberOfPeople = people
            let split = TipCalculator.billWithTip / TipCalculator.numberOfPeople
            pricePerPersonLabel.text = "\(rounding(split, toNearest: 0.01))"

        } else {
            pricePerPersonLabel.text = "not a number"
        }
    }
    
    func rounding(_ value: Double, toNearest: Double) -> Double {
        return round(value/toNearest) * toNearest
    }
    
    func setUpUI() {
        self.view.backgroundColor = UIColor.backgroundColor
        calculatedTipLabel.textColor = UIColor.largeTextColor
        splitBetweenTextLabel.textColor = UIColor.largeTextColor
        tipCalculatorLabel.textColor = UIColor.largeTextColor
        calculatedTipLabel.textColor = UIColor.mainTextColor
        pricePerPersonLabel.textColor = UIColor.mainTextColor
        enterBillTextLabel.textColor = UIColor.mainTextColor
        resultTextLabel.textColor = UIColor.mainTextColor
        numberOfPeopleTextLabel.textColor = UIColor.mainTextColor
        pricePerTextLabel.textColor = UIColor.mainTextColor
        tipTextLabel.textColor = UIColor.mainTextColor
        tipLabel.textColor = UIColor.mainTextColor
    }
}

