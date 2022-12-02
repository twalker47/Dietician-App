//
//  LivingstonController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 12/1/22.
//

import UIKit

class LivingstonController: UIViewController {
    var sex = true
    var weight = 0.0
    var age = 0.0
    var wUnits = true
    
    @IBOutlet weak var LivingstonSexSelection: UISegmentedControl!
    
    @IBAction func LivingstonSexSelection(_ sender: UISegmentedControl) {
        if LivingstonSexSelection.selectedSegmentIndex == 0 {
            sex = true
        }
        else {
            sex = false
        }
    }
    
    @IBOutlet weak var LivingstonHeightField: UITextField!
    
    @IBOutlet weak var LivingstonWeightField: UITextField!
    
    @IBOutlet weak var LivingstonWeightUnitsSelection: UISegmentedControl!
    
    @IBAction func LivingstonWeightUnitsSelection(_ sender: UISegmentedControl) {
        if LivingstonWeightUnitsSelection.selectedSegmentIndex == 0 {
            wUnits = true
        }
        else {
            wUnits = false
        }
    }
    
    @IBOutlet weak var LivingstonAgeField: UITextField!
    
    @IBAction func livingstonSubmit(_ sender: Any) {
        if LivingstonWeightField.text != "" && LivingstonAgeField.text != "" {
            performSegue(withIdentifier: "LivingstonResultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsController = segue.destination as! ResultsController
        
        weight = Double(LivingstonWeightField.text!) ?? 0.0
        age = Double(LivingstonAgeField.text!) ?? 0.0
        
        let weightCorrected = correctWeightUnits(weight: weight, kg: wUnits)
        
        let livingstonResult = livingston(sex: sex, weight: weightCorrected, age: age)
        resultsController.myResults = livingstonResult
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
