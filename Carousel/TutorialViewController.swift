
//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Amrutha Krishnan on 10/22/16.
//  Copyright © 2016 Amrutha Krishnan. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScrollView: UIScrollView!
    
    
    
    @IBOutlet weak var tutorialPageControl: UIPageControl!
    
    
    @IBOutlet weak var backUpButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialScrollView.contentSize = CGSize (width: 1280, height: 526)
        tutorialScrollView.delegate = self
        
        backUpButton.alpha = 0
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        tutorialPageControl.numberOfPages = 4

        tutorialPageControl.currentPage = page
        
        if page == 0{
            self.backUpButton.alpha = 0
            self.tutorialPageControl.currentPage = 1
            self.tutorialPageControl.currentPageIndicatorTintColor = UIColor.blue

        }
        
        else if page == 1{
            self.backUpButton.alpha = 0
            self.tutorialPageControl.currentPage = 2
            self.tutorialPageControl.currentPageIndicatorTintColor = UIColor.blue
            
        }
        
        else if page == 2{
            self.backUpButton.alpha = 0
            self.tutorialPageControl.currentPage = 3
            self.tutorialPageControl.currentPageIndicatorTintColor = UIColor.blue
            
        }
        
            
            else if page == 3 {
            tutorialPageControl.isHidden = true
            UIView.animate(withDuration: 0.0, animations: {
                self.backUpButton.alpha = 1
                self.tutorialPageControl.isHidden = true
                
                
            })
        }
        
        
        
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
