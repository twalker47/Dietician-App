//
//  MifflinController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 11/8/22.
//

import UIKit

class MifflinController: UIViewController {
    var sex = true
    var height = 0.0
    var weight = 0.0
    var age = 0.0
    
    @IBOutlet weak var mifflinSexSelection: UISegmentedControl!
    
    @IBAction func mifflinSexSelection(_ sender: UISegmentedControl) {
        if mifflinSexSelection.selectedSegmentIndex == 0{
            sex = true
        }
        else {
            sex = false
        }
    }
    @IBOutlet weak var mifflinHeightField: UITextField!
    
    @IBOutlet weak var mifflinHeightUnitsSelection: UISegmentedControl!
    
    @IBOutlet weak var mifflinWeightField: UITextField!
    
    @IBOutlet weak var mifflinWeightUnitsSelection: UISegmentedControl!
    
    @IBOutlet weak var mifflinAgeField: UITextField!
    
    @IBAction func mifflinSubmit(_ sender: Any) {
        if mifflinHeightField.text != "" && mifflinWeightField.text != "" && mifflinAgeField.text != "" {
            performSegue(withIdentifier: "mifflinResultsSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsController = segue.destination as! ResultsController
        
        height = Double(mifflinHeightField.text!) ?? 0.0
        weight = Double(mifflinWeightField.text!) ?? 0.0
        age = Double(mifflinAgeField.text!) ?? 0.0
        
        let mifflinResult = mifflin(sex: sex, weight: weight, height: height, age: age)
        resultsController.myRMR = mifflinResult
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
