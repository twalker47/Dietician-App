//
//  ResultsController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 11/8/22.
//

import UIKit

class ResultsController: UIViewController {
    
    var myResults = 0.0
    
    @IBOutlet weak var rmr: UILabel!
        
    @IBOutlet weak var factor11: UILabel!
    
    @IBOutlet weak var factor12: UILabel!
    
    @IBOutlet weak var factor13: UILabel!
    
    @IBOutlet weak var factor14: UILabel!
    
    @IBOutlet weak var factor15: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rmr.text = String(round(myResults))
        factor11.text = String(round(myResults * 1.1))
        factor12.text = String(round(myResults * 1.2))
        factor13.text = String(round(myResults * 1.3))
        factor14.text = String(round(myResults * 1.4))
        factor15.text = String(round(myResults * 1.5))
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