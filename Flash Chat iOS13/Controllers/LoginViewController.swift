//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LoginViewController viewDidLoad Called")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        print("LoginViewController viewWillAppear Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("LoginViewController viewDidAppear Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("LoginViewController viewWillDisappear Called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.isNavigationBarHidden = false
        print("LoginViewController viewDidDisappear Called")
    }
    
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        //fatalError()
        
        if let email = emailTextfield.text , let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
                // guard let strongSelf = self else { return }
                // ...
                if let e = error {
                    print("\n Error is : \(e)")
                }
                else {
                    // Navigate to Chat View Controller
                    //UserDefaults.standard.set( Auth.auth().currentUser, forKey: "user")
                    self.performSegue(withIdentifier: K.loginSague, sender: self)
                }
            }
        }
    }    
}
