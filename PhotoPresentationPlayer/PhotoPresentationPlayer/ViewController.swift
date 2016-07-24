//
//  ViewController.swift
//  Photo Presentation Player
//
//  Created by AWEEK.JO on 2016. 7. 22..
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView:UIImageView!
    @IBOutlet var toggleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = [
            UIImage(named: "1.jpg")!,
            UIImage(named: "2.jpg")!,
            UIImage(named: "3.jpg")!,
            UIImage(named: "4.jpg")!,
            UIImage(named: "5.jpg")!,
            UIImage(named: "6.jpg")!,
            UIImage(named: "7.jpg")!,
            UIImage(named: "8.jpg")!,
            UIImage(named: "9.jpg")!,
            UIImage(named: "10.jpg")!,
            UIImage(named: "11.jpg")!,
            UIImage(named: "12.jpg")!,
            UIImage(named: "13.jpg")!,
            UIImage(named: "14.jpg")!,
            UIImage(named: "15.jpg")!
            ]
        
        imageView.animationImages = images
        imageView.animationDuration = Double(speedSlider.value)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        imageView.startAnimating()
        toggleButton.setTitle("Stop", forState: UIControlState.Normal)
        
    }
    
    @IBAction func toggleAction(sender:AnyObject) {
        if (imageView.isAnimating()) {
            imageView.stopAnimating()
            toggleButton.setTitle("Start", forState: UIControlState.Normal)
        } else {
            imageView.startAnimating()
            toggleButton.setTitle("Stop", forState: UIControlState.Normal)
        }
    }
    
    @IBAction func changeSpeedAction(sender:AnyObject) {
        imageView.animationDuration = Double(speedSlider.value)
        imageView.startAnimating()
        toggleButton.setTitle("Stop", forState: UIControlState.Normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

