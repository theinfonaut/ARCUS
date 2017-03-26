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
    var set = [Shot]()


    override func viewDidLoad() {
        super.viewDidLoad()
        endScoreLabel.text = ""
        endScoreTotalLabel.text = "0"
        roundScoreTotalLabel.text = "0"
    }

    @IBAction func buttonNewEnd(_ sender: AnyObject) {
        
    }
    
    @IBAction func numberButtonPressed(_ sender:UIButton) {
        let shot = Shot(value: Double(sender.tag))
        set.append(shot)
        calculateAndSetUI(shot)
    }
    
    func calculateAndSetUI(_ shot: Shot) {
        Set.sharedInstance.setArray.append(shot)
        let endScore = Set.sharedInstance.sumScore
        
        endScoreLabel.text = Set.sharedInstance.numberString()
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(endScore)"
        
    }
    
}
