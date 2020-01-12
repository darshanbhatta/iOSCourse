//
//  ViewController.swift
//  WarCardGame
//
//  Created by Darshan on 1/11/20.
//  Copyright © 2020 Darshan Bhatta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var dealBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func dealClick(_ sender: Any) {
        let leftCardIndex = Int.random(in: 2...14)
        let rightCardIndex = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftCardIndex)")
        
        rightImageView.image = UIImage(named: "card\(rightCardIndex)")
        
        if leftCardIndex > rightCardIndex {
            leftScoreLabel.text = String( Int(leftScoreLabel.text!)! + 1)
        } else if leftCardIndex < rightCardIndex {
            rightScoreLabel.text = String( Int(rightScoreLabel.text!)! + 1)
        }
        
    }
    
}

