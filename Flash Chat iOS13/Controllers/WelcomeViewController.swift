//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import CLTypingLabel

class WelcomeViewController: UIViewController {

//   @IBOutlet weak var titleLabel: CLTypingLabel!
    
    let titleText = "⚡️FlashChat"
    @IBOutlet weak var titleLabel: UILabel!
    var charIndex = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
        
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                DispatchQueue.main.async {
                    self.titleLabel.text?.append(letter)
                }
            }
            
            charIndex += 1
        }
    }
}
