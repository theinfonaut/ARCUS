//
//  RoundVC.swift
//  ARCUS
//
//  Created by Leslie Chicoine on 9/7/16.
//  Copyright © 2016 Leslie Chicoine. All rights reserved.
//

import UIKit

class RoundVC: UIViewController {
    @IBOutlet weak var endScoreLabel: UILabel!
    @IBOutlet weak var endScoreTotalLabel: UILabel!
    @IBOutlet weak var roundScoreTotalLabel: UILabel!
    @IBOutlet weak var totalArrowsLabel: UILabel!
    @IBOutlet weak var navigationTotalLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    var round: Round!
    var totalArrows = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        round = Round()
        endScoreLabel.text = ""
        endScoreTotalLabel.text = "0"
    }

    @IBAction func buttonNewEnd(_ sender: AnyObject) {
        
    }
    
    @IBAction func donePressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func numberButtonPressed(_ sender:UIButton) {
        let shot = Shot(value: Double(sender.tag))
        totalArrows += 1
        calculateAndSetUI(shot)
    }
    
    func calculateAndSetUI(_ shot: Shot) {
        round.roundArray.append(shot)
        let endScore = round.sumScore
        
        endScoreLabel.text = endScoreLabel.text.map { $0 + " \(Int(shot.score))" }
        endScoreTotalLabel.text = "\(Int(endScore))"
        totalArrowsLabel.text = "\(Int(totalArrows))"
        let average = endScore/totalArrows
        averageLabel.text = String(format: "%.2f", average)
    }
    
}
