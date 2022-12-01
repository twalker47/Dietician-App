//
//  PennState2003Controller.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 12/1/22.
//

import UIKit

class PennState2003Controller: UIViewController {
    var sex = true
    var height = 0.0
    var weight = 0.0
    var age = 0.0
    var hUnits = false
    var wUnits = true
    var tMax = 0.0
    var vex = 0.0
    
    @IBOutlet weak var PennState2003SexSelection: UISegmentedControl!
    
    @IBAction func PennState2003SexSelection(_ sender: UISegmentedControl) {
        if PennState2003SexSelection.selectedSegmentIndex == 0 {
            sex = true
        }
        else {
            sex = false
        }
    }
    
    @IBOutlet weak var PennState2003HeightField: UITextField!
    
    @IBOutlet weak var PennState2003HeightUnitsSelection: UISegmentedControl!
    
    @IBAction func PennState2003HeightUnitsSelection(_ sender: UISegmentedControl) {
        if PennState2003HeightUnitsSelection.selectedSegmentIndex == 0 {
            hUnits = false
        }
        else {
            hUnits = true
        }
    }
    
    @IBOutlet weak var PennState2003WeightField: UITextField!
    
    @IBOutlet weak var PennState2003WeightUnitsSelection: UISegmentedControl!
    
    @IBAction func PennState2003WeightUnitsSelection(_ sender: UISegmentedControl) {
        if PennState2003WeightUnitsSelection.selectedSegmentIndex == 0 {
            wUnits = true
        }
        else {
            wUnits = false
        }
    }
    
    @IBOutlet weak var PennState2003AgeField: UITextField!
    
    @IBOutlet weak var PennState2003tMaxField: UITextField!
    
    @IBOutlet weak var PennState2003vexField: UITextField!
    
    
    @IBAction func PennState2003Submit(_ sender: Any) {
        if PennState2003HeightField.text != "" && PennState2003WeightField.text != "" && PennState2003AgeField.text != "" && PennState2003tMaxField.text != "" && PennState2003vexField.text != "" {
            performSegue(withIdentifier: "PennState2003ResultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsController = segue.destination as! ResultsController
        
        height = Double(PennState2003HeightField.text!) ?? 0.0
        weight = Double(PennState2003WeightField.text!) ?? 0.0
        age = Double(PennState2003AgeField.text!) ?? 0.0
        tMax = Double(PennState2003tMaxField.text!) ?? 0.0
        vex = Double(PennState2003vexField.text!) ?? 0.0
        
        let heightCorrected = correctHeightUnits(height: height, cm: hUnits)
        let weightCorrected = correctWeightUnits(weight: weight, kg: wUnits)
        
        let pennState2003Result = pennState3(sex: sex, weight: weightCorrected, height: heightCorrected, age: age, v: vex, tMax: tMax)
        resultsController.myResults = pennState2003Result
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
