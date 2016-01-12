//  DiceViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController: UIViewController {
    
    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet var firstDice: UIImageView!
    @IBOutlet var secondDice: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        
        // The dice will only appear if firstValue and secondValue have been set
        if let firstValue = self.firstValue {
            self.firstDice.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDice.image = nil;
        }
        
        if let secondValue = self.secondValue {
            self.secondDice.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secondDice.image = nil
        }
        
        self.firstDice.alpha = 0
        self.secondDice.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.firstDice.alpha = 1
            self.secondDice.alpha = 1
        }
    }
    
    /**
    * accepts a conditional Int, and returns an dice image, or nil
    */
    
    func imageForValue(value: Int?) -> UIImage? {
        return nil
    }
    
    /**
    *    dismiss this view controller
    */
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}


