//
//  ViewController.swift
//  LoginApp
//
//  Created by Denis Kalugin on 05.11.2022.
//

import UIKit

class mainViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC: WelcomeScreenViewController = segue.destination as? WelcomeScreenViewController else { return }
        destinationVC.textWelcome = userName.text!
    }
    
    @IBAction func loginIn(_ sender: UIButton) {
        let login = String(userName.text ?? "")
        
    }
    
   
    
    @IBAction func forgotUserName() {
        let alertController = UIAlertController(title: "Забыли Имя", message: "Введите User", preferredStyle: .alert)
        let alertOkController = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertOkController)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        let alertController2 = UIAlertController(title: "Забыли Пароль", message: "Введите 123", preferredStyle: .alert)
        let alertOkController2 = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController2.addAction(alertOkController2)
        
        present(alertController2, animated: true, completion: nil)
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}



