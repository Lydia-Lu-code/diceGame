//
//  ViewController.swift
//  diceGame
//
//  Created by 維衣 on 2020/5/11.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import SwiftUI
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    @IBOutlet weak var dice3ImageView: UIImageView!
    @IBOutlet weak var dice4ImageView: UIImageView!
    @IBOutlet weak var dice5ImageView: UIImageView!
    @IBOutlet weak var dice6ImageView: UIImageView!
    
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var trueSwitch: UISwitch!
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var openDice: UIButton!
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    var randomDice3 : Int = 0
    var randomDice4 : Int = 0
    var randomDice5 : Int = 0
    var randomDice6 : Int = 0

    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    @IBAction func shakeDiceButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
        func updateDiceImages() {
//             利用arc4random_uniform函數產生隨機值
            randomDice1 = Int(arc4random_uniform(6))
            randomDice2 = Int(arc4random_uniform(6))
            randomDice3 = Int(arc4random_uniform(6))
            randomDice4 = Int(arc4random_uniform(6))
            randomDice5 = Int(arc4random_uniform(6))
            randomDice6 = Int(arc4random_uniform(6))

            // 利用UIImage產生隨機的圖檔
            dice1ImageView.image = UIImage(named: diceArray[randomDice1])
            dice2ImageView.image = UIImage(named: diceArray[randomDice2])
            dice3ImageView.image = UIImage(named: diceArray[randomDice3])
            dice4ImageView.image = UIImage(named: diceArray[randomDice4])
            dice5ImageView.image = UIImage(named: diceArray[randomDice5])
            dice6ImageView.image = UIImage(named: diceArray[randomDice6])
            
            openDice.isHidden = false
            

            }

}
