//
//  ViewController.swift
//  taxCalculator
//
//  Created by Habibul Mursaleen on 21/9/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTxt: UITextField!
    
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPrice.text = " "
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculator(_ sender: Any) {
        
        var price = Double(priceTxt.text!)! //because there was not any value in pricetxt
        var salesTax = Double(salesTxt.text!)! //because there was not any value in txt field
        
        var totalSaleTax = price * (salesTax / 100)
        
        var totalPriceX = price + totalSaleTax
        
        totalPrice.text = "$ \(totalPriceX)" // string interpolation -> converting numbers in to string
    }
    
    
    @IBAction func again(_ sender: Any) {
        
        //for loop
        calculator(3)
    }
}

