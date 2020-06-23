//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDice1: UIImageView!
    @IBOutlet weak var imageDice2: UIImageView!
    let diceImage = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var index1 = 0
    var index2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonRoll(_ sender: UIButton) {
        index1 = Int.random(in: 0 ... 5)
        index2 = Int.random(in: 0 ... 5)
        imageDice1.image = diceImage[index1]
        imageDice2.image = diceImage[index2]
    }


}

