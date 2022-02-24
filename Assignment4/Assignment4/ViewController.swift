//
//  ViewController.swift
//  Assignment4
//
//  Created by Xingfu Du on 2/23/22.
//

import UIKit

class ViewController: UIViewController, SendFirstAndLastNameDelegate {
    
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func getName(_ sender: Any) {
        performSegue(withIdentifier: "segueToSVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSVC" {
            let SVC = segue.destination as! SecondViewController
            guard let firstName = lblFirstName.text else {return}
            guard let lastName = lblLastName.text else {return}
            SVC.firstName = firstName
            SVC.lastName = lastName
            SVC.sendFirstAndLastNameDelegate = self
        }
    }
    func setFirstAndLastName(firstName: String, lastName: String) {
        lblFirstName.text = firstName
        lblLastName.text = lastName
    }
    func setWelcomeText(welcomeText: String) {
        lblWelcome.text = welcomeText
    }
}

