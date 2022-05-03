//
//  ViewController.swift
//  BMI
//
//  Created by Xingfu Du on 5/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var txtInch: UITextField!
    @IBOutlet weak var txtFoot: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    var BMI : Double = 0.0
    var res : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMI(_ sender: Any) {
        let weight : Double = Double(txtWeight.text!) ?? 0.0
        let feet : Double = Double(txtFoot.text!) ?? 0.0
        let inch : Double = Double(txtInch.text!) ?? 0.0
        let height = feet * 12 + inch
        if (height == 0.0 || weight == 0.0) {
            print("not a valid number")
            return
        }
        BMI = weight / height / height * 703
        res += String(format: "%.2f", BMI)
        if BMI < 18.5 {
            res +=  ", Underweight"
        } else if BMI < 25 {
            res += ", Healthy weight"
        } else if BMI < 30 {
            res += ", Overweight"
        } else {
            res += ", Obese"
        }
        lblBMI.text = res
        return
    }
    
}

