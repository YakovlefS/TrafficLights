//
//  ViewController.swift
//  TrafficLight
//
//  Created by YakovlefS on 24.03.2022.
//

import UIKit

enum ColorLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!

    @IBOutlet var startButton: UIButton!

    private var colorLight = ColorLight.red
    private let lightIsOn = 1
    private let lightIsOff = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 10

        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff

    }
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius =
        redLight.frame.width / 2
        yellowLight.layer.cornerRadius =
        redLight.frame.width / 2
        greenLight.layer.cornerRadius =
        redLight.frame.width / 2

    }
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
    }


        switch colorLight {
        case .red:
                greenLight.alpha = lightIsOff
            redLight.alpha = CGFloat(lightIsOn)
                colorLight = .yellow
            case .yellow:
                redLight.alpha = lightIsOff
            yellowLight.alpha = CGFloat(lightIsOn)
                colorLight = .green
            case .green:
            greenLight.alpha = CGFloat(lightIsOn)
                yellowLight.alpha = lightIsOff
                colorLight = .red
        }
    }
}
