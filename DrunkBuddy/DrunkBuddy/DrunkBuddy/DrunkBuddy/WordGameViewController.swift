//
//  WordGameViewController.swift
//  DrunkBuddy
//
//  Created by Kendall Harrison on 11/28/17.
//  Copyright © 2017 Kendall Harrison. All rights reserved.
//

import UIKit

class WordGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var firstword: UITextField!

    @IBOutlet weak var secondword: UITextField!

    @IBOutlet weak var thirdword: UITextField!
    @IBOutlet weak var fourthword: UITextField!
    @IBOutlet weak var fifthword: UITextField!
    @IBOutlet weak var Results: UILabel!

   /* @IBAction func FinishButton(_ sender: AnyObject) {
        
        var numcorrect = 0;
        let numquestions = 5;
        let firstword = self.firstword.text;
        let correctfirstword = "label";
        if(firstword == correctfirstword)
        {
            numcorrect = numcorrect+1;
        }
        let secondword = self.secondword.text;
        let correctsecondword = "cases";
        if(secondword == correctsecondword)
        {
            numcorrect = numcorrect+1;
        }
        let thirdword = self.thirdword.text;
        let correctthirdword = "cases";
        if(thirdword == correctthirdword)
        {
            numcorrect = numcorrect+1;
        }
        let fourthword = self.fourthword.text;
        let correctfourthword = "cases";
        if(fourthword == correctfourthword)
        {
            numcorrect = numcorrect+1;
        }
        let fifthword = self.fifthword.text;
        let correctfifthword = "cases";
        if(fifthword == correctfifthword)
        {
            numcorrect = numcorrect+1;
        }
        Results.text = "Results \(numcorrect)/\(numquestions)"
        
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
