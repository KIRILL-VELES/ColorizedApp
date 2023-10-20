//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Kirill Sinenchenko on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabelView: UILabel!
    @IBOutlet weak var greenLabelView: UILabel!
    @IBOutlet weak var blueLabelView: UILabel!
    
    @IBOutlet weak var redSliderView: UISlider!
    @IBOutlet weak var greenSliderView: UISlider!
    @IBOutlet weak var blueSliderView: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupColorView()
        updateBackgroundColor()
    }
    
    // Mark: - Private Methods
    
    private func setupColorView() {
        colorView.layer.cornerRadius = 20
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
    
    // Mark: IBAActions
    
    @IBAction func redSliderAction() {
        updateBackgroundColor()
        redLabelView.text = String(
            format: "%.2f",
            Float(redSliderView.value))
    }
    
    @IBAction func greenSliderAction() {
        updateBackgroundColor()
        greenLabelView.text = String(
            format: "%.2f",
            Float(greenSliderView.value))
    }
    
    @IBAction func blueSliderAction() {
        updateBackgroundColor()
        blueLabelView.text = String(
            format: "%.2f",
            Float(blueSliderView.value))
    }

}

