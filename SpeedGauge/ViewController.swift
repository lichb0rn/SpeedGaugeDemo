//
//  ViewController.swift
//  SpeedGauge
//
//  Created by Miroslav Taleiko on 26.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gaugeView: GaugeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func slideChange(_ sender: UISlider) {
        let sliderValue = sender.value
        let speed = gaugeView.maxSpeed * CGFloat(sliderValue)
        
        gaugeView.rotateGauge(newSpeed: speed)
    }
}

