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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonNewEnd(sender: AnyObject) {
        prepNewEnd()
    }

    @IBAction func button0(sender: AnyObject) {
        let score = 0
        addScoreToEnd(score)
        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
        }
    
    @IBAction func button1(sender: UIButton) {
        let score = 1
        addScoreToEnd(score)
        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }

    @IBAction func button2(sender: AnyObject) {
        let score = 2
        addScoreToEnd(score)
        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    @IBAction func button3(sender: AnyObject) {
        let score = 3
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button4(sender: AnyObject) {
        let score = 4
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button5(sender: AnyObject) {
        let score = 5
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button6(sender: AnyObject) {
        let score = 6
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button7(sender: AnyObject) {
        let score = 7
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button8(sender: AnyObject) {
        let score = 8
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button9(sender: AnyObject) {
        let score = 9
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func button10(sender: AnyObject) {
        let score = 10
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
    @IBAction func buttonX(sender: AnyObject) {
        let score = 10
        addScoreToEnd(score)

        let endScore = sumScore(currentEnd)
        let roundScore = sumEnds()
        
        endScoreLabel.text = endScoreLabel.text! + "\(score) "
        endScoreTotalLabel.text = "\(endScore)"
        roundScoreTotalLabel.text = "\(roundScore)"
    }
    
}