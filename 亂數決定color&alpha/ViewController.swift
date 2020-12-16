//
//  ViewController.swift
//  亂數決定color&alpha
//
//  Created by  謝皓昀 on 2020/12/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var blankImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var radiusSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func colorSliderChange(_ sender: Any) {
        blankImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func randomColor(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        radiusSlider.value = Float.random(in: 0...150)
        blankImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        blankImageView.clipsToBounds = true
        blankImageView.layer.cornerRadius = CGFloat(radiusSlider.value)
    }
    
    @IBAction func changeRadiusSlider(_ sender: Any) {
        blankImageView.clipsToBounds = true
        blankImageView.layer.cornerRadius = CGFloat(radiusSlider.value)
    }
    
    
}

