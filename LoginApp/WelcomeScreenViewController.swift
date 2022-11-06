//
//  WelcomeScreenViewController.swift
//  LoginApp
//
//  Created by Denis Kalugin on 05.11.2022.
//

import UIKit

class WelcomeScreenViewController: UIViewController {

   
    @IBOutlet var welcomText: UILabel!
    var textWelcome = "Welcome"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomText.text = textWelcome
      
    }
    
    @IBAction func logOut() {
        dismiss(animated: true)
    }
    
   
}
