//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        print("WelcomeViewController viewWillAppear Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("WelcomeViewController viewDidAppear Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("WelcomeViewController viewWillDisappear Called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.isNavigationBarHidden = false
        print("WelcomeViewController viewDidDisappear Called")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("WelcomeViewController viewDidLoad Called")
        NotificationCenter.default.addObserver(self, selector: #selector(doSomething), name: UIApplication.willEnterForegroundNotification, object: nil)
        
     
        /**
        for achar in title{
            _ = Timer.scheduledTimer(withTimeInterval: interval * index, repeats: false) { (timer) in
                self.titleLabel.text?.append(achar)
            }
            index+=1
        }
        */
        
        
    }
    
    @objc func doSomething() {
     
        titleLabel.text = K.appName
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    

}
