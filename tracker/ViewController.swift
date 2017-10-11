//
//  ViewController.swift
//  tracker
//
//  Created by Jonah Pelfrey on 10/11/17.
//  Copyright © 2017 Jonah Pelfrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //VARS
    var proteinGoal: Int = 0
    var calorieGoal: Int = 0
    var carbGoal: Int = 0
    
    
    //OUTLETS

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var gramsOfProtein: UILabel!
    @IBOutlet weak var proteinProgressBar: UIProgressView!
    
    @IBOutlet weak var numberOfCalories: UILabel!
    @IBOutlet weak var calorieProgressBar: UIProgressView!
    
    @IBOutlet weak var numberOfCarbs: UILabel!
    @IBOutlet weak var carbProgressBar: UIProgressView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.proteinProgressBar.progress = 0
        self.carbProgressBar.progress = 0
        self.calorieProgressBar.progress = 0
        
        
//        self.proteinProgressBar.animate(duration: 10)
        
    }
    
    
    //FUNCTIONS
    func retrieveProgress() {
        
    }
    
    func retrieveGoals() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    

}

extension UIProgressView {
    
    func animate(duration: Double) {
        
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            self.setProgress(1.0, animated: true)
        }, completion: nil)
    }
}




