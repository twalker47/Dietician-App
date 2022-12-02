//
//  PennStateHControllerViewController.swift
//  CalCount-Storyboards
//
//  Created by Brittany Bishop on 12/1/22.
//

import UIKit

class PennStateHControllerViewController: UIViewController {
    var sex = true
    var height = 0.0
    var weight = 0.0
    var age = 0.0
    var hUnits = false
    var wUnits = true
    var tMax = 0.0
    
    
    @IBOutlet weak var pennStateHSexSelection: UISegmentedControl!
    
    @IBAction func pennStateHSexSelection(_ sender: UISegmentedControl) {
        if pennStateHSexSelection.selectedSegmentIndex == 0{
            sex = true
        }
        else{
            sex = false
        }
    }
    
   
    @IBOutlet weak var pennStateHHeightField: UITextField!
    
  
    @IBOutlet weak var pennStateHHeightUnitsSelection: UISegmentedControl!
    
    
    @IBAction func pennStateHHeightUnitsSelection(_ sender: UISegmentedControl) {
        if pennStateHHeightUnitsSelection.selectedSegmentIndex == 0{
            hUnits = false
        }
        else{
            hUnits = true
        }
    }
    
    
    @IBOutlet weak var pennStateHWeightField: UITextField!
    
    
    @IBOutlet weak var pennStateHWeightUnitsSelection: UISegmentedControl!
    
    
    @IBAction func pennStateHWeightUnitsSelection(_ sender: UISegmentedControl) {
        if pennStateHWeightUnitsSelection.selectedSegmentIndex == 0{
            wUnits = true
        }
        else{
            wUnits = false
        }
    }
    
    
    @IBOutlet weak var pennStateHAgeField: UITextField!
    
    
    @IBOutlet weak var pennStateHMaxTempField: UITextField!
    
    
      
    
    
    @IBAction func pennStateHSubmit(_ sender: Any) {
        if pennStateHHeightField.text != "" &&
            pennStateHWeightField.text != "" &&
            pennStateHAgeField.text != "" &&
            pennStateHMaxTempField.text != "" {
            performSegue(withIdentifier: "PennStateHResultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsController = segue.destination as!
            ResultsController
        
        height = Double(pennStateHHeightField.text!) ?? 0.0
        weight = Double(pennStateHWeightField.text!) ?? 0.0
        age = Double(pennStateHAgeField.text!) ?? 0.0
        tMax = Double(pennStateHMaxTempField.text!) ?? 0.00

        
        let heightCorrected = correctHeightUnits(height: height, cm: hUnits)
        let weightCorrected = correctWeightUnits(weight: weight, kg: wUnits)
        let pennStateHResult = pennStateH(sex: sex, weight: weightCorrected, height: heightCorrected, age: age, tMax: tMax)
        resultsController.myResults = pennStateHResult
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
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
