//
//  ViewController.swift
//  TaxCalculator
//
//  Created by Ash, Aurora on 2019-11-01.
//  Copyright © 2019 Rori Ash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Properties
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var grossIncome: UITextField!
    @IBOutlet weak var federalTaxOwing: UILabel!
    @IBOutlet weak var effectiveTaxRate: UILabel!
    
    // Mark: Initializers
    
    // Mark: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Button to calculate tax owing
    @IBAction func taxOwing(_ sender: Any) {
        
        // Get information from user
        guard let user = name.text else  {
            federalTaxOwing.text = "Please enter a name."
            return
            
            guard let user = grossIncome.text else {
                effectiveTaxRate.text = "Please enter a gross income in dollars."
                return
            }
        }
        
        let grossIncomeAsString = grossIncome.text!
        
        // Convert string data type to double (to calculate)
        let grossIncomeAsDouble = Double(grossIncomeAsString)
        let grossIncomeAsInt = Int (grossIncomeAsDouble )
        
        // Variables for different gross incomes 
        var tax1 = 0.0
        var tax2 = 0.0
        var tax3 = 0.0
        var tax4 = 0.0
        var tax5 = 0.0
        
        
        // Calculations
        switch grossIncomeAsInt {
        case 210472...:
            tax5 = (grossIncomeAsInt - 210372) * 0.33
            fallthrough
        case 147667...210371:
            tax4 = (grossIncomeAsInt > 62704) * 0.29
        else tax4 = (grossIncomeAsInt - 62704) * 0.29
            fallthrough
        case 95259...147667:
            tax3 = (grossIncomeAsInt > 52408) * 0.26
        else tax3 = (grossIncomeAsInt - 52408) * 0.26
            fallthrough
        case 47630...95259:
            tax2 = (grossIncomeAsInt > 47629) * 0.205
        else tax2 = (grossIncomeAsInt - 47629) * 0.205
            fallthrough
        case ...47630:
            tax1 = (grossIncomeAsInt > 47630)
        default:
            grossIncomeAsInt * 0.15
            
            
            //Total tax added together
            let totalTax = tax1 + tax2 + tax3 + tax4 + tax5
            let taxRate = totalTax/grossIncomeAsDouble! * 100
            
            //Send results to the view
            federalTaxOwing.text = "Your federal tax is \(totalTax)"
            
            effectiveTaxRate.text = "Your effective tax rate is \(taxRate)"
        }
        
        
        
        
        
        
    }
    
    
    
    
}
