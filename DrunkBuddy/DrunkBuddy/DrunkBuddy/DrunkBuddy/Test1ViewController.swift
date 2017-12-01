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
    
    enum inputError: Error{
        case string
        case int
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
    @IBOutlet weak var errorLabel: UILabel!
    @IBAction func nextButton(_ sender: AnyObject)  {
        
        
        
        var age = Double(self.age.text!)
        let weight = Double(self.weight.text!)
        let gender = String(self.gender.text!)
        let time = Double(self.time.text!)
        let beer = Double(self.beer.text!)
        let wine = Double(self.wine.text!)
        let mixedDrinks = Double(self.mixedDrinks.text!)
        let shots = Double(self.shots.text!)
        var error = 0
        errorLabel.text=""
        
        //error handling
        if (gender == "" || (weight == nil) || (time == nil) || (beer == nil) || (wine == nil) || (mixedDrinks == nil)){
                errorLabel.text = "*Fill in all required fields"
                error = 1
        }
        /*
        if (gender != "male" || gender != "Male" || gender != "MALE" || gender != "female" || gender != "Female" || gender != "FEMALE"){
                errorLabel.text = "Invalid input for gender"
                error = 1
        }*/
        
        
        /*
        if  (Double(weight!) <= 0.0 || Double(weight!) >= 500.0) {
                errorLabel.text = "*Invalid input for beverages consumed, weight, or time"
                error = 1
            }
            
        if  (Double(time!) <= 0.0 || Double(time!) >= 1000.0){
                errorLabel.text = "*Invalid input for beverages consumed, weight, or time"
                error = 1
        }
        
        if  (Double(beer!) <= 0.0 || Double(beer!) >= 50.0){
                errorLabel.text = "*Invalid input for beverages consumed, weight, or time"
                error = 1
        }
        
        if  (Double(wine!) <= 0.0 || Double(wine!) >= 50.0){
                errorLabel.text = "*Invalid input for beverages consumed, weight, or time"
                error = 1
        }
        
        if  (Double(mixedDrinks!) <= 0.0 || Double(mixedDrinks!) >= 500.0){
                errorLabel.text = "*Invalid input for beverages consumed, weight, or time"
                error = 1
        }
        
        if  (Double(shots!) <= 0.0 || Double(shots!) >= 500.0 ){
                errorLabel.text = "*Invalid input for beverages consumed, weight, or time"
                error = 1
        }*/
    
        //Calculation for BAC start here
        if (error == 0){
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
        errorLabel.text = ""
        }
    }

}
