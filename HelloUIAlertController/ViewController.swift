//
//  ViewController.swift
//  HelloUIAlertController
//
//  Created by 王麒翔 on 2022/12/10.
//

import UIKit

class ViewController: UIViewController {

    // Alert Button Action
    @IBAction func showAlert(_ sender: UIButton) {
        
        // define Alert Controller // title, message
        let myAlert = UIAlertController(title: "Hello",
                                        message: "How are you?",
                                        preferredStyle: UIAlertController.Style.alert)
        
        // UIAlertAction // define alert button 1
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (action:UIAlertAction) in
                self.dismiss(animated: true, completion: nil)
        }
        
        // UIAlertAction // define alert button 2
        let helloAction = UIAlertAction(title: "Say Hello", style: .destructive) {
            (action:UIAlertAction) in
            print("Hello")
            self.dismiss(animated: true, completion: nil)
        }
        
        // define alert button 3
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
            (action:UIAlertAction) in
            print("Cancel")
            self.dismiss(animated: true, completion: nil)
        }
        
        // let okAction = UIAlertAction(title: "OK", style: .default) // 點擊後無觸發事件
        
        // Alert Controller add UIAlertAction (button)
        myAlert.addAction(okAction)
        myAlert.addAction(helloAction)
        myAlert.addAction(cancelAction)
        
        // show Alert Controller
        present(myAlert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

