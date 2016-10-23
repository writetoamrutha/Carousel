//
//  LoginViewController.swift
//  Carousel
//
//  Created by Amrutha Krishnan on 10/21/16.
//  Copyright © 2016 Amrutha Krishnan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginActivityMonitor: UIActivityIndicatorView!
    
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        
        // ScrollView
        
        
        loginScrollView.contentSize = CGSize (width: 320, height: 580)
        loginScrollView.contentInset.bottom = 100
        
        
        //Notifications
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (Notification) in
            
            //self.fieldParentView.center.y = self.fieldParentView.center.y - 70
            //   self.buttonParentView.center.y = self.buttonParentView.center.y - 200
            
            
            
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
            
            
            
        }
        
        
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (Notification) in
            
            
            
            //self.fieldParentView.center.y = self.fieldParentView.center.y + 70
            
            self.buttonParentView.center.y = self.buttonParentView.center.y + 200
            
            
            
            
        }
       
    }
    
    
    
    
    @IBAction func signinButton(_ sender: AnyObject) {
        
        loginActivityMonitor.startAnimating()
        
        signinButton.isSelected = true
        
        
   //     let signinAlertController = UIAlertController (title: "Signin In", message:"" , preferredStyle: .alert)
        
        
   //  self.present(signinAlertController, animated: true, completion:nil)
        
        
    // signinAlertController.dismiss(animated: true, completion: nil)
        
        
        
        
        
        
        
        
        
        
        if emailField.text == "tim@codepath.com" && passwordField.text == "swift" {
            
            
            delay(2, closure: { () -> () in
                
                self.loginActivityMonitor.stopAnimating()
                
                self.signinButton.isSelected = false
                
                self.performSegue(withIdentifier: "loginSegue", sender: self)
                
               
                
            })
            
            
        }
        
        
        
        
        if emailField.text == "" || passwordField.text == "" {
            
            delay(1, closure: { () -> () in
                
                self.loginActivityMonitor.stopAnimating()
                
                self.signinButton.isSelected = false
                
                
                let wrongAlertController = UIAlertController(title: "Missing credentials", message: "Please enter a valid email and password", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                wrongAlertController.addAction(cancelAction)
                
                
                self.present(wrongAlertController, animated: true, completion: nil)
              
            })
            
        }



        
        
        
        
        
        
        
        if emailField.text != "tim@codepath.com" || passwordField.text != "swift"{
            
            delay(1, closure: { () -> () in
                
                self.loginActivityMonitor.stopAnimating()
                
                self.signinButton.isSelected = false
                
                
                let wrongAlertController = UIAlertController(title: "Incorrect credentials", message: "Please enter a valid email address and password", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                wrongAlertController.addAction(cancelAction)
                
                
                self.present(wrongAlertController, animated: true, completion: nil)
                
            })
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func loginBackButton(_ sender: AnyObject) {
        
        _ = navigationController?.popViewController(animated: true)
        
        
    }
    
    
    func tapGestureRecognizer(_ sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
