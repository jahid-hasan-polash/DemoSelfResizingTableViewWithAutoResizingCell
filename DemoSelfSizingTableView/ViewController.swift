//
//  ViewController.swift
//  DemoSelfSizingTableView
//
//  Created by Jahid Hasan Polash on 10/6/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnSubmitTapped(_ sende: UIButton) {
        performSegue(withIdentifier: "toPopup", sender: nil)
    }
    
    //MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPopup" {
            if let desVC = segue.destination as? PopupController {
                desVC.inputs = getInputStrings()
            }
        }
    }
    
    func getInputStrings() -> [String] {
        return [firstTextField.text ?? "",
                secondTextField.text ?? "",
                thirdTextField.text ?? ""]
    }

}

