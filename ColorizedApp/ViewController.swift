//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Kirill Sinenchenko on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redView: UILabel!
    @IBOutlet weak var greenView: UILabel!
    @IBOutlet weak var blueView: UILabel!
    
    @IBOutlet weak var redSliderView: UISlider!
    @IBOutlet weak var greenSliderView: UISlider!
    @IBOutlet weak var blueSliderView: UISlider!
    
    let radiusWindow = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = CGFloat(radiusWindow)
        
        updateBackgroundColor()
    }
    
    private func updateBackgroundColor() {
        let red = CGFloat(redSliderView.value)
        let green = CGFloat(greenSliderView.value)
        let blue = CGFloat(blueSliderView.value)
        
        colorView.backgroundColor = UIColor(red: red,
                                            green: green,
                                            blue: blue,
                                            alpha: 1.0)
    }
    
    @IBAction func redSliderAction() {
        updateBackgroundColor()
        redView.text = String(
            format: "%.2f",
            Float(redSliderView.value))
    }
    
    @IBAction func greenSliderAction() {
        updateBackgroundColor()
        greenView.text = String(
            format: "%.2f",
            Float(greenSliderView.value))
    }
    
    @IBAction func blueSliderAction() {
        updateBackgroundColor()
        blueView.text = String(
            format: "%.2f",
            Float(blueSliderView.value))
    }

    
}

