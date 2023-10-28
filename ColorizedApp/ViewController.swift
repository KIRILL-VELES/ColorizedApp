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
    
    // Mark: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setValue()
        setColor()
    }
    
    // Mark: IBAActions
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSliderView:
            redLabelView.text = string(from: sender)
        case greenSliderView:
            greenLabelView.text = string(from: sender)
        default:
            blueLabelView.text = string(from: sender)
        }
        
    }
    
    // Mark: private func
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSliderView.value),
            green: CGFloat(greenSliderView.value),
            blue: CGFloat(blueSliderView.value),
            alpha: 1
        )
    }
    
    private func setValue() {
        redLabelView.text = string(from: redSliderView)
        greenLabelView.text = string(from: greenSliderView)
        blueLabelView.text = string(from: blueSliderView)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
