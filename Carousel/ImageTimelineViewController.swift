//
//  ImageTimelineViewController.swift
//  Carousel
//
//  Created by Amrutha Krishnan on 10/22/16.
//  Copyright © 2016 Amrutha Krishnan. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {

    
    
    @IBOutlet weak var imageTimelineScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageTimelineScrollView.contentSize = CGSize (width: 320, height: 1564)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
