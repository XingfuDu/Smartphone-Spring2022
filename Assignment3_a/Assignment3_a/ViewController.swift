//
//  ViewController.swift
//  Assignment3_a
//
//  Created by Xingfu Du on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueToSVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSVC" {
            let svc = segue.destination as! SecondViewController
            svc.welcomeStr = "Welcome \(txtFirstName.text!) \(txtLastName.text!)"
        }
    }
}

