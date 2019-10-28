//
//  ViewController.swift
//  bullseye
//
//  Created by MacStudent on 2019-10-28.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50
     var targetValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        targetValue = 1 + Int(arc4random_uniform(100))
       // slider.value = 60
        //currentValue = Int(slider.value)
        // Do any additional setup after loading the view.
    }
   // @IBAction func showAlert() {
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        //let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default,
                                handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        
    
    }
        
        @IBAction func sliderMoved(_ slider: UISlider) {
            currentValue = lroundf(slider.value)
            print("The value of the slider id now: \(slider.value)")
            print("The value of the slider id now: \(currentValue)")
        }
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
       // targetLabel.text = targetValue
        targetLabel.text = "\(targetValue)"
    }
}
