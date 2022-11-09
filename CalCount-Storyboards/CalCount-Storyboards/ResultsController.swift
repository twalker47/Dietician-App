//
//  ResultsController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 11/8/22.
//

import UIKit

class ResultsController: UIViewController {
    
    var myRMR = 0.0
    
    @IBOutlet weak var rmr: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rmr.text = String(myRMR)
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
