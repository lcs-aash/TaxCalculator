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
    
    var tax1 = 0.0
    var tax2 = 0.0
    var tax3 = 0.0
    var tax4 = 0.0
    var tax5 = 0.0
    
    
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
        }
        
        let grossIncomeAsString = grossIncome.text!
        
        // Convert string data type to double (to calculate)
        let grossIncomeAsDouble = Double(grossIncomeAsString)
        
        
        // Calculs
        switch grossIncomeAsDouble {
            
            
            
        }
        
        
        
        
        // Report the information to the user

    }
    
    
}

