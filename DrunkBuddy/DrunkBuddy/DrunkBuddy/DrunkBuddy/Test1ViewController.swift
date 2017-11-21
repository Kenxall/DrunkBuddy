//
//  Test1ViewController.swift
//  DrunkBuddy
//
//  Created by Kendall Harrison on 11/19/17.
//  Copyright © 2017 Kendall Harrison. All rights reserved.
//

import UIKit

class Test1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    /*Users will store input in these variables to be used
    * to calculate their blood alcohol content levels.*/
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var wine: UITextField!
    @IBOutlet weak var beer: UITextField!
    @IBOutlet weak var mixedDrinks: UITextField!
    @IBOutlet weak var shots: UITextField!
    @IBOutlet weak var bacLabel: UILabel!
    @IBAction func nextButton(_ sender: AnyObject) {
        var age = Double(self.age.text!)
        let weight = Double(self.weight.text!)
        let gender = String(self.gender.text!)
        let time = Double(self.time.text!)
        let beer = Double(self.beer.text!)
        let wine = Double(self.wine.text!)
        let mixedDrinks = Double(self.mixedDrinks.text!)
        let shots = Double(self.shots.text!)
        
        let bVal = Double(beer! * 12 * 0.05)
        let wVal = Double(wine! * 5 * 0.12)
        let mVal = Double(mixedDrinks! * 2 * 0.4)
        let sVal = Double(shots! * 1.25 * 0.4)
        var gVal = 0.0
        if(gender == "male" || gender == "Male" || gender == "MALE"){
            gVal = 0.73
        }
        else if(gender == "female" || gender == "Female" || gender == "FEMALE"){
            gVal = 0.66
        }
        let dTol = bVal + wVal + mVal + sVal
        let bacVal = ((dTol*5.14)/( weight!*gVal))-0.015 * time!
        bacLabel.text = "BACLevel = \(bacVal)"
       /* if(age <= 21.0){
            
        }*/
    }
}
