//
//  HarrisController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 11/22/22.
//

import UIKit

class HarrisController: UIViewController {
    var sex = true
    var height = 0.0
    var weight = 0.0
    var age = 0.0
    var hUnits = false
    var wUnits = true
    
    @IBOutlet weak var harrisSexSelection: UISegmentedControl!
    
    @IBAction func harrisSexSelection(_ sender: UISegmentedControl) {
        if harrisSexSelection.selectedSegmentIndex == 0 {
            sex = true
        }
        else {
            sex = false
        }
    }
    
    @IBOutlet weak var harrisHeightField: UITextField!
    
    @IBOutlet weak var harrisHeightsUnitSelection: UISegmentedControl!
    
    @IBAction func harrisHeightsUnitSelection(_ sender: UISegmentedControl) {
        if harrisHeightsUnitSelection.selectedSegmentIndex == 0 {
            hUnits = false
        }
        else {
            hUnits = true
        }
    }
    
    @IBOutlet weak var harrisWeightField: UITextField!
    
    @IBAction func harrisWeightUnitsSelection(_ sender: UISegmentedControl) {
        if harrisHeightsUnitSelection.selectedSegmentIndex == 0 {
            wUnits = true
        }
        else {
            wUnits = false
        }
    }
    
    @IBOutlet weak var harrisAgeField: UITextField!
    
    @IBAction func harrisSubmit(_ sender: Any) {
        if harrisHeightField.text != "" && harrisWeightField.text != "" && harrisAgeField.text != "" {
            performSegue(withIdentifier: "harrisResultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsController = segue.destination as! ResultsController
        
        height = Double(harrisHeightField.text!) ?? 0.0
        weight = Double(harrisWeightField.text!) ?? 0.0
        age = Double(harrisAgeField.text!) ?? 0.0
        
        let heightCorrected = correctHeightUnits(height: height, cm: hUnits)
        let weightCorrected = correctWeightUnits(weight: weight, kg: wUnits)
        
        let harrisResult = harris(sex: sex, weight: weightCorrected, height: heightCorrected, age: age)
        resultsController.myResults = harrisResult
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
