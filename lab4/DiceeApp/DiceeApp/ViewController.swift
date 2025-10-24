//
//  ViewController.swift
//  DiceeApp
//
//  Created by Rasul Turumov on 23.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    let diceImages = [
                UIImage(named: "dice1"),
                UIImage(named: "dice2"),
                UIImage(named: "dice3"),
                UIImage(named: "dice4"),
                UIImage(named: "dice5"),
                UIImage(named: "dice6")
            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.layer.borderColor = UIColor.white.cgColor
        rollButton.layer.borderWidth = 1.5
        rollButton.layer.cornerRadius = 15
        leftDice.image = UIImage(named: "dice1")
        rightDice.image = UIImage(named: "dice1")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        animateDiceSpin()
        rollDice()
    }
    
    func rollDice() {
            leftDice.image = diceImages.randomElement() ?? UIImage(named: "dice1")
            rightDice.image = diceImages.randomElement() ?? UIImage(named: "dice1")
    }
    
    func animateDiceSpin() {
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.fromValue = 0
        rotation.toValue = Double.pi * 2
        rotation.duration = 0.4
        rotation.repeatCount = 1
        leftDice.layer.add(rotation, forKey: "rotate")
        rightDice.layer.add(rotation, forKey: "rotate")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                animateDiceSpin()
                rollDice()
            }
        }
    
}

