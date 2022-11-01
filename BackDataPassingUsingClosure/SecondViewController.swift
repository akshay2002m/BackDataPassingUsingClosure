//
//  SecondViewController.swift
//  BackDataPassingUsingClosure
//
//  Created by Mac on 09/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    var dataFromSecondViewController : ((String,String,String)->Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SeconVC"
        self.navigationItem.hidesBackButton = true

        
    }
    
    @IBAction func btnPassDataToFVC(_ sender: Any)
    {
        guard let closure = dataFromSecondViewController
        else
        {
            print("no data")
            return
        }
    
        let firstName = self.firstNameTextField.text
        let middleName = self.middleNameTextField.text
        let lastName = self.lastNameTextField.text
    
    dataFromSecondViewController?(firstName ?? "Akshay", middleName ?? "Machindra", lastName ?? "Vyawahare")
    
        self.navigationController?.popViewController(animated: true)
    }
    
    
    

    
}
