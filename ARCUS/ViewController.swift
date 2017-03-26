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


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0)
        endScoreLabel.text = ""
        endScoreTotalLabel.text = "0"
        roundScoreTotalLabel.text = "0"
    }

    @IBAction func buttonNewEnd(_ sender: AnyObject) {
        prepNewEnd()
    }
    
    @IBAction func numberButtonPressed(_ sender:UIButton) {
        calculateAndSetUI(sender.tag)
    }
    
    func calculateAndSetUI(_ value: Int) {
        addScoreToEnd(value)
        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(value) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
        
    }
    
}
