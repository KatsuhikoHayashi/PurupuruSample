//
//  ViewController.swift
//  PurupuruSample
//
//  Created by Hayashidesu. on 2015/07/07.
//  Copyright (c) 2015年 Hayashidesu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewPurupuru: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        vibrated(true, view: viewPurupuru)
    }
    
    func degreesToRadians(degrees: Float) -> Float {
        return degrees * Float(M_PI) / 180.0
    }
    
    func vibrated(vibrated:Bool, view: UIView) {
        if vibrated {
            var animation: CABasicAnimation
            animation = CABasicAnimation(keyPath: "transform.rotation")
            animation.duration = 0.15
            animation.fromValue = degreesToRadians(3.0)
            animation.toValue = degreesToRadians(-3.0)
            animation.repeatCount = Float.infinity
            animation.autoreverses = true
            view.layer .addAnimation(animation, forKey: "VibrateAnimationKey")
        }
        else {
            view.layer.removeAnimationForKey("VibrateAnimationKey")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

