//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Владимир Захаров on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show greeting")
        
    }


    @IBAction func greetingButtonPress() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with:
                                                    greetingLabel.isHidden ? "Show greeting" : "Hide greeting"
        )
        
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show greeting" : "Hide greeting" ,
//            for: .normal
//        )
//        if greetingLabel.isHidden {
//            greetingButton.setTitle("Show greeting", for: .normal)
//        } else {
//            greetingButton.setTitle("Hide greeting", for: .normal)
//        }
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.3511838137, green: 1, blue: 0.2827384241, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 30)
        return buttonConfiguration
    }
    
    
}

