//
//  KCalController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 12/6/22.
//

import UIKit

class KCalController: UIViewController {
    var weight = 0.0
    var kCalFactor = 0.0
    var wUnits = true
    
    
    @IBOutlet weak var kCalWeightField: UITextField!
    
    @IBOutlet weak var kCalWeightUnitsSelection: UISegmentedControl!
    
    @IBAction func kCalWeightUnitsSelection(_ sender: UISegmentedControl) {
        if kCalWeightUnitsSelection.selectedSegmentIndex == 0 {
            wUnits = true
        }
        else {
            wUnits = false
        }
    }
    
    @IBOutlet weak var kCalFactorField: UITextField!
    
    
    @IBAction func kCalSubmit(_ sender: Any) {
        if kCalWeightField.text != "" && kCalFactorField.text != "" {
            performSegue(withIdentifier: "kCalResultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsController = segue.destination as! ResultsController
        
        weight = Double(kCalWeightField.text!) ?? 0.0
        kCalFactor = Double(kCalFactorField.text!) ?? 0.0
        
        let weightCorrected = correctWeightUnits(weight: weight, kg: wUnits)
        
        let kCalResult = kCalPerKG(weight: weightCorrected, kCalFactor: kCalFactor)
        resultsController.myResults = kCalResult
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() 

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
