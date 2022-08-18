//
//  ViewController.swift
//  homeWork2
//
//  Created by Владимир Захаров on 17.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 55
        redLight.alpha = 0.5
        yellowLight.layer.cornerRadius = 55
        yellowLight.alpha = 0.5
        greenLight.layer.cornerRadius = 55
        greenLight.alpha = 0.5
        
    }
    

    @IBAction func switchButtonPassed() {
        if redLight.alpha == 0.5 && yellowLight.alpha == 0.5 && greenLight.alpha == 0.5 {
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.5 ;yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.5 ;greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.5 ;redLight.alpha = 1
        }
    }

}
