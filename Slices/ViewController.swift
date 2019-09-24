//
//  ViewController.swift
//  Slices
//
//  Created by Braden Hamlin on 9/19/19.
//  Copyright © 2019 Braden Hamlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slicesTextInput: UITextField!
    @IBOutlet weak var mouthsTextInput: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var endMessageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


   
    @IBAction func calculate(_ sender: UIButton) {
//        if let slicesTextInput = Double(slicesTextInput.text!) {
//            if let mouthsTextInput = Double(mouthsTextInput.text!) {
//                if mouthsTextInput != 0 {
//                    endMessageLabel.text = "Everyone receives \(slicesTextInput/mouthesTextInput) slices."
//                } else {
//                    endMessageLabel.text = "Cannot pizza by zero."
//                }
//            } else {
//                endMessageLabel.text = "Please enter a valid number of mouths."
//            }
//        } else {
//            endMessageLabel.text = "Please enter a valid number of slices."
//        }
        
        guard let slicesTextInput = Double(slicesTextInput.text!) else {
            endMessageLabel.text = "Please enter a valid number of slices."
            return
        }
        guard let mouthsTextInput = Double(mouthsTextInput.text!) else {
            endMessageLabel.text = "Please enter a valid number of mouths."
            return
        }
        guard mouthsTextInput != 0 else {
            endMessageLabel.text = "Cannot pizza by zero."
            return
        }
        guard slicesTextInput != 0 else {
            endMessageLabel.text = "No more pizza!"
            return
        }
        endMessageLabel.text = "Everybody gets \(slicesTextInput/mouthsTextInput) slices."
    }
}
