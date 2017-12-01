//
//  MathGameViewController.swift
//  DrunkBuddy
//
//  Created by Kendall Harrison on 11/29/17.
//  Copyright © 2017 Kendall Harrison. All rights reserved.
//

import UIKit

class MathGameViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBOutlet weak var Aswer1: UITextField!
    @IBOutlet weak var Answer2: UITextField!
    @IBOutlet weak var Answer3: UITextField!
    @IBOutlet weak var Answer4: UITextField!
    @IBOutlet weak var Answer5: UITextField!
    @IBOutlet weak var Results: UILabel!
    @IBOutlet weak var Message: UILabel!
    @IBOutlet weak var ScrollView: UIScrollView!

    
    @IBAction func CalculateButton(_ sender: AnyObject) {
        var numcorrect = 0;
        let aswerone = 42;
        var A1 = Int(self.Aswer1.text!)
        var A2 = Int(self.Answer2.text!)
        var A3 = Int(self.Answer3.text!)
        var A4 = Int(self.Answer4.text!)
        var A5 = Int(self.Answer5.text!)

        
        if(A1 == aswerone)
        {
            numcorrect = numcorrect+1;
        }
        else{
            A1 = 0
        }
        let answertwo = 13;
        if(A2==answertwo)
        {
            numcorrect = numcorrect+1;
        }
        else{
            A2 = 0
        }
        let answer3 = 4;
        if(A3==answer3)
        {
            numcorrect = numcorrect+1;
        }
        else{
            A3 = 0
        }
        let answer4 = 8;
        if(A4==answer4)
        {
            numcorrect = numcorrect+1;
        }
        else{
            A4 = 0
        }
        let answer5 = 16;
        if(A5==answer5)
        {
            numcorrect = numcorrect+1;
        }
        else{
            A5 = 0;
        }
        Results.text = "Results: \(numcorrect)/5"
        if(numcorrect==0)
        {
            Message.text = "Based on your results, your physical and sensory functions are impared. You may have little comprehension of where you are."
        }
        else if(numcorrect==1)
        {
            Message.text = "Based on your results, you may feel dazed, confused, and nauseous."
        }
        else if(numcorrect==2)
        {
            Message.text = "Based on your results, you may have impared motor control and loss of balance with blurred vision"
        }
        else if(numcorrect==3)
        {
            Message.text = "Based on your results, you may have slurred speach, impared reaction time"
        }
        else if(numcorrect==4)
        {
            Message.text = "Based on your results, you may have slight impairment in speech, balance and reaction time"
        }
        else if(numcorrect==5)
        {
            Message.text = "Based on your results, you're mildly relaxed"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
