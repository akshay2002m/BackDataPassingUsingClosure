//
//  ViewController.swift
//  BackDataPassingUsingClosure
//
//  Created by Mac on 09/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "FirstVC"
        self.navigationItem.hidesBackButton = true
    }

    @IBAction func btnToNavigateSVC(_ sender: Any)
    {
        guard let SecondViewCondroller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else
        {
            print("dbfsjf")
            return
            
        }
        SecondViewCondroller.dataFromSecondViewController =
        { (name,middlename,lastname) in
            self.firstNameLabel.text = name
            self.middleNameLabel.text = middlename
            self.lastNameLabel.text = lastname
        }
        self.navigationController?.pushViewController(SecondViewCondroller, animated: true)
    }
    
}

