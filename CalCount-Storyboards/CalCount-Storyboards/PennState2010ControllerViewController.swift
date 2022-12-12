//
//  PennState2010ControllerViewController.swift
//  CalCount-Storyboards
//
//  Created by Lauren Winslett on 12/1/22.
//

import UIKit

class PennState2010ControllerViewController: UIViewController {
    var sex = true
    var height = 0.0
    var weight = 0.0
    var age = 0.0
    var hUnits = false
    var wUnits = true
    var tMax = 0.0
    var vex = 0.0
    
    @IBOutlet weak var PennState2010SexSelection: UISegmentedControl!
    
    @IBAction func PennState2010SexSelection(_ sender: UISegmentedControl) {
        if PennState2010SexSelection.selectedSegmentIndex == 0 { sex = true}
        else {sex = false }
    }
    
    @IBOutlet weak var PennState2010HeightField: UITextField!
    
    @IBOutlet weak var PennState2010HeightUnitsSelection: UISegmentedControl!
    
    @IBAction func PennState2010HeightUnitsSelection(_ sender: UISegmentedControl) {
    if PennState2010HeightUnitsSelection.selectedSegmentIndex == 0 {
            hUnits = false
        }
        else {
            hUnits = true
        }
    }
    
    @IBOutlet weak var PennState2010WeightField: UITextField!
    
    @IBOutlet weak var PennState2010WeightUnitsSelection: UISegmentedControl!
    
    @IBAction func PennState2010WeightUnitsSelection(_ sender: UISegmentedControl) {
        if PennState2010WeightUnitsSelection.selectedSegmentIndex == 0 {
            wUnits = true
        }
        else {
            wUnits = false
        }
    }
    
    @IBOutlet weak var PennState2010AgeField: UITextField!
    
    @IBOutlet weak var PennState2010MaxTemperatureField: UITextField!
    
    @IBOutlet weak var PennState2010ExpiredMinuteVentField: UITextField!
    
    @IBAction func PennState2010Submit(_ sender: Any) {
        if PennState2010HeightField.text != "" && PennState2010WeightField.text != "" && PennState2010AgeField.text != "" && PennState2010MaxTemperatureField.text != "" && PennState2010ExpiredMinuteVentField.text != ""{
            performSegue(withIdentifier: "PennState2010ResultsSegue", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resultsController = segue.destination as! ResultsController
        
        height = Double(PennState2010HeightField.text!) ??
        0.0
        weight = Double(PennState2010WeightField.text!) ?? 0.0
        age = Double(PennState2010AgeField.text!) ?? 0.0
        
        let heightCorrected = correctHeightUnits(height: height, cm: hUnits)
        let weightCorrected = correctWeightUnits(weight: weight, kg: wUnits)
        
        let pennState2010Result = pennState2010(sex:sex, weight: weightCorrected, height: heightCorrected, age: age, v: vex, tMax: tMax)
        resultsController.myResults = pennState2010Result
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
            
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
           // if keyboard size is not available for some reason, dont do anything
           return
        }
      
      // move the root view up by the distance of keyboard height
      self.view.frame.origin.y = 0 - keyboardSize.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
      
        // call the 'keyboardWillShow' function when the view controller receive the notification that a keyboard is going to be shown
        NotificationCenter.default.addObserver(self, selector: #selector(PennState2003Controller.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
      
          // call the 'keyboardWillHide' function when the view controlelr receive notification that keyboard is going to be hidden
        NotificationCenter.default.addObserver(self, selector: #selector(PennState2003Controller.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    

    @objc func keyboardWillHide(notification: NSNotification) {
      // move back the root view origin to zero
      self.view.frame.origin.y = 0
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
