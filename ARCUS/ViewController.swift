//
//  ViewController.swift
//  ARCUS
//
//  Created by Leslie Chicoine on 9/7/16.
//  Copyright © 2016 Leslie Chicoine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var endScoreLabel: UILabel!
    @IBOutlet weak var endScoreTotalLabel: UILabel!
    @IBOutlet weak var roundScoreTotalLabel: UILabel!
    var round: Round!

    override func viewDidLoad() {
        super.viewDidLoad()
        round = Round()
        endScoreLabel.text = ""
        endScoreTotalLabel.text = "0"
        roundScoreTotalLabel.text = "0"
    }

    @IBAction func buttonNewEnd(_ sender: AnyObject) {
        
    }
    
    @IBAction func numberButtonPressed(_ sender:UIButton) {
        let shot = Shot(value: Double(sender.tag))
        calculateAndSetUI(shot)
    }
    
    func calculateAndSetUI(_ shot: Shot) {
        round.roundArray.append(shot)
        let endScore = round.sumScore
        
        endScoreLabel.text = endScoreLabel.text.map { $0 + " \(Int(shot.score))" }
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(endScore)"
    }
    
}
