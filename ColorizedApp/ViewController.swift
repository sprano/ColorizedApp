//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Sofi Prano on 20.05.2024.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var viewOfNowColor: UIView!
    
    @IBOutlet var greenColorNumber: UILabel!
    @IBOutlet var redColorNumber: UILabel!
    @IBOutlet var blueColorNumber: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOfNowColor.layer.cornerRadius = 15
        setupSliders()
        viewOfNowColor.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    }

    // MARK: - IB Actions
    @IBAction func changeRedColorSlider() {
        redColorNumber.text = String(format: "%.02f", redColorSlider.value)
        viewOfNowColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value), alpha: 1
        )
    }
    
    @IBAction func changeGreenColorSlider() {
        greenColorNumber.text = String(format: "%.02f", greenColorSlider.value)
        viewOfNowColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value), alpha: 1
        )
    }
    
    @IBAction func changeBlueColorSlider() {
        blueColorNumber.text = String(format: "%.02f", blueColorSlider.value)
        viewOfNowColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value), alpha: 1
        )
    }
    
    // MARK: - Private Methods
    private func setupSliders() {
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumTrackTintColor = .blue
        
        redColorSlider.maximumTrackTintColor = .darkGray
        greenColorSlider.maximumTrackTintColor = .darkGray
        blueColorSlider.maximumTrackTintColor = .darkGray
        
        redColorSlider.maximumValue = 0.00
        greenColorSlider.maximumValue = 0.00
        blueColorSlider.maximumValue = 0.00
        
        redColorSlider.maximumValue = 1.0
        greenColorSlider.maximumValue = 1.0
        blueColorSlider.maximumValue = 1.0
        
        redColorSlider.value = 0.5
        greenColorSlider.value = 0.5
        blueColorSlider.value = 0.5
    }
}

