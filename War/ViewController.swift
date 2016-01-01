//
//  ViewController.swift
//  War
//
//  Created by Mustafa Mohamed on 27/06/2015.
//  Copyright (c) 2015 Mustafa Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var enemyScore: UILabel!
    
    var cardNamesArray:[String] = ["ace","card2", "card3","card4","card5","card6","card7", "card8", "card9",
        "card10", "jack", "queen", "king"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PlayRoundTapped(sender: UIButton) {
        
        //randomise a number between 0 and 12 then add 1. (Between 1 and 13)
        var firstRandomNumber = Int(arc4random_uniform(13))
        var secondRandomNumber = Int(arc4random_uniform(13))
        
        //Construct a string with the random number.
        var firstCard:String = self.cardNamesArray[firstRandomNumber]
        var secondCard:String = self.cardNamesArray[secondRandomNumber]
        
        //Set the image view to the asset corresponding to the randomised number
        self.firstCardImageView.image = UIImage(named: firstCard)
        self.secondCardImageView.image = UIImage(named:secondCard)
        
        //Determine the higher card
        if firstRandomNumber > secondRandomNumber{
            //TODO: first card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
            
        }
        else if firstRandomNumber == secondRandomNumber{
            //TODO: cards are equal
        }
        else{
            //TODO: second card is larger
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
            
        }
    }

}

