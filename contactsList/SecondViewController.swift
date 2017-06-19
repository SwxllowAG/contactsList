//
//  secondViewController.swift
//  contactsList
//
//  Created by Galym Anuarbek on 6/14/17.
//  Copyright © 2017 Galym Anuarbek. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var inputName: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        if inputName.text != "" && inputNumber.text != ""{
        list.append(inputName.text!+" - "+inputNumber.text!)
        inputNumber.text = ""
        inputName.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
