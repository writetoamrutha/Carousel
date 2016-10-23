//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Amrutha Krishnan on 10/21/16.
//  Copyright © 2016 Amrutha Krishnan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController , UIScrollViewDelegate {
    
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    @IBOutlet weak var imgFour: UIImageView!
    @IBOutlet weak var imgThree: UIImageView!
    @IBOutlet weak var imgSix: UIImageView!
    @IBOutlet weak var imgFive: UIImageView!
    
    var xOffsets : [CGFloat] = [-55, 35, 16, 100, -110, -95]
    var yOffsets : [CGFloat] =  [-290, -260, -415, -410, -500, -480]
    var scales : [CGFloat] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    
    var rotations : [CGFloat] = [-10, -10, 10, 10, 10, -10]
    var images : [UIImageView] =  []
    
    
    func convertValue(value: CGFloat, r1Min: CGFloat, r1Max: CGFloat, r2Min: CGFloat, r2Max: CGFloat) -> CGFloat {
        let ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    func scrollViewDidScroll(_ scrollview: UIScrollView){
        
        let offset = CGFloat(scrollview.contentOffset.y)
        print("content offset: \(scrollview.contentOffset.y)")
        // var x1, y1, scale1, rotate1 : CGFloat
        
        
        
        //  for index in 0 ... 5 {
        
        //       x1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[index], r2Max: 0)
        //       y1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[index], r2Max: 0)
        //     scale1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: scales[index], r2Max: 1)
        //   rotate1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:  rotations[index], r2Max: 0)
        
        // images[index].transform =  CGAffineTransform (translationX: x1, y: y1)
        //images[index].transform = images[index].transform.scaledBy(x: scale1, y: scale1)
        //images[index].transform = images[index].transform.rotated(by: CGFloat(M_PI / 180) * rotate1)
        
        
        //  }
        
        let x1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -55, r2Max: 0)
        let y1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -260, r2Max: 0)
        let scale1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        let rotate1 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:-10, r2Max: 0)
        
        
        
        
        let x2 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 35, r2Max: 0)
        let y2 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -290, r2Max: 0)
        let scale2 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let rotate2 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:-10, r2Max: 0)
        
        
        
        let x3 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 16, r2Max: 0)
        let y3 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        let scale3 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        let rotate3 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:10, r2Max: 0)
        
        
        
        
        
        let x4 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 100, r2Max: 0)
        let y4 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -410, r2Max: 0)
        let scale4 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        let rotate4 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:10, r2Max: 0)
        
        
        
        
        let x5 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -110, r2Max: 0)
        let y5 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        let scale5 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let rotate5 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:10, r2Max: 0)
        

        
        
        let x6 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -95, r2Max: 0)
        let y6 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: -480, r2Max: 0)
        let scale6 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let rotate6 = convertValue(value: offset, r1Min: 0, r1Max: 568, r2Min:-10, r2Max: 0)
        

        

        
        
        
        
        
        
        imgOne.transform = CGAffineTransform (translationX: x1, y: y1)
        imgOne.transform = imgOne.transform.scaledBy(x: scale1, y: scale1)
        imgOne.transform = imgOne.transform.rotated(by: CGFloat(M_PI / 180) * rotate1)
        
        
        
        imgTwo.transform = CGAffineTransform (translationX: x2, y: y2)
        imgTwo.transform = imgTwo.transform.scaledBy(x: scale2, y: scale2)
        imgTwo.transform = imgTwo.transform.rotated(by: CGFloat(M_PI / 180) * rotate2)

        
        imgThree.transform = CGAffineTransform (translationX: x3, y: y3)
        imgThree.transform = imgThree.transform.scaledBy(x: scale3, y: scale3)
        imgThree.transform = imgThree.transform.rotated(by: CGFloat(M_PI / 180) * rotate3)

        
        imgFour.transform = CGAffineTransform (translationX: x4, y: y4)
        imgFour.transform = imgFour.transform.scaledBy(x: scale4, y: scale4)
        imgFour.transform = imgFour.transform.rotated(by: CGFloat(M_PI / 180) * rotate4)
        
        
        imgFive.transform = CGAffineTransform (translationX: x5, y: y5)
        imgFive.transform = imgFive.transform.scaledBy(x: scale5, y: scale5)
        imgFive.transform = imgFive.transform.rotated(by: CGFloat(M_PI / 180) * rotate5)

        
        imgSix.transform = CGAffineTransform (translationX: x6, y: y6)
        imgSix.transform = imgSix.transform.scaledBy(x: scale6, y: scale6)
        imgSix.transform = imgSix.transform.rotated(by: CGFloat(M_PI / 180) * rotate6)
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //ScrollView
        welcomeScrollView.contentSize = imageView.frame.size
        welcomeScrollView.delegate = self
        //images = [imgOne, imgTwo, imgThree, imgFour, imgFive, imgSix]
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
