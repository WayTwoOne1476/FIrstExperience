//
//  ViewController.swift
//  homeWork4
//
//  Created by Владимир Захаров on 30.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mixture: UIView!
    
    @IBOutlet var redPosition: UILabel!
    @IBOutlet var greenPosition: UILabel!
    @IBOutlet var bluePositoin: UILabel!
    
    
    @IBOutlet var intensityOfRed: UILabel!
    @IBOutlet var intensityOfGreen: UILabel!
    @IBOutlet var intensityOfBlue: UILabel!
    
    @IBOutlet var redChange: UISlider!
    @IBOutlet var greenChange: UISlider!
    @IBOutlet var blueChange: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parametersColorsChange()
        
        intensityOfRed.text = ""
        intensityOfBlue.text = ""
        intensityOfGreen.text = ""
        
    }
    
    
    @IBAction func redActionChange() {
        intensityOfRed.text = String(format: "%.2f", arguments: [redChange.value])
        mixtureColor()
    }
    
    @IBAction func greenActionChange() {
        intensityOfGreen.text = String(format: "%.2f", arguments: [greenChange.value])
        mixtureColor()
    }
    
    @IBAction func blueActionChange() {
        intensityOfBlue.text = String(format: "%.2f", arguments: [blueChange.value])
        mixtureColor()
    }
    
    
    
    
    
    
    // MARK: - Private Methods
    
    private func parametersColorsChange() {
        redChange.minimumTrackTintColor = .red
        greenChange.minimumTrackTintColor = .green
        blueChange.minimumTrackTintColor = .blue
    }
    
    private func mixtureColor () {
        mixture.backgroundColor = UIColor(red: CGFloat(redChange.value),
                                          green: CGFloat(greenChange.value),
                                          blue: CGFloat(blueChange.value),
                                          alpha: 1)
    }
    
}


