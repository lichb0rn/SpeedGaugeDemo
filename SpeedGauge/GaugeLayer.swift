//
//  GaugeLayer.swift
//  SpeedGauge
//
//  Created by Miroslav Taleiko on 26.07.2021.
//

import UIKit

class GaugeLayer: CAShapeLayer {
    
    internal var disableSpringAnimation: Bool = true
    
    override func action(forKey event: String) -> CAAction? {
        
        if event == "transform" && !disableSpringAnimation {
            let springAnimation = CASpringAnimation(keyPath: event)
            springAnimation.timingFunction = CAMediaTimingFunction(name: .easeOut)
            springAnimation.initialVelocity = 0.8
            springAnimation.damping = 1
            return springAnimation
        }
        
        return super.action(forKey: event)
    }
}
