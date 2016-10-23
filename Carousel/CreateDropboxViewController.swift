//
//  CreateDropboxViewController.swift
//  Carousel
//
//  Created by Amrutha Krishnan on 10/23/16.
//  Copyright © 2016 Amrutha Krishnan. All rights reserved.
//

import UIKit

class CreateDropboxViewController: UIViewController {

    
    
    @IBOutlet weak var createScrollView: UIScrollView!
    
    @IBOutlet weak var createButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      createScrollView.contentSize = CGSize (width: 320, height: 580)
        
     createScrollView.contentInset.bottom = 100
      
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (Notification) in
            
           
               self.createButtonView.center.y = self.createButtonView.center.y - 150
            
            
            
          
        }
        
        
        
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (Notification) in
            
            
            
         
            self.createButtonView.center.y = self.createButtonView.center.y + 150
            
            
            
            
        }


    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //func scrollViewDidScroll//(scrollView: UIScrollView) {
        // If the scrollView has been scrolled down by 50px or more...
       // if //scrollView.contentOffset.y //<= -50 {
            // Hide the keyboard
       //     view.endEditing(true)
     //   }
   // }

    
    
    @IBAction func checkboxButton(_ sender: AnyObject) {
        
    
    
    
    }
    
    
    @IBAction func tapGestureRecognizer(_ sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func backButton(_ sender: AnyObject) {
    
    navigationController?.popViewController(animated: true)
        
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
