//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hangmanWord = "begin"
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var playButton: UIButton!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
        textField.delegate = self
        playButton.isEnabled = false
        playButton.setTitleColor(UIColor.white, for: .normal)
        
    // start 
  }


    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let hangmanViewController = segue.destination as? HangmanViewController else {
            return
        }
        hangmanViewController.hangmanWord = textField.text
        
        // use a guard statement for the blank spaces
        
        
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        playButton.isEnabled = true
        playButton.setTitleColor(UIColor.blue, for: .normal)
        return true
    }
}
