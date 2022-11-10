//
//  ResultsController.swift
//  CalCount-Storyboards
//
//  Created by Greg Young on 11/8/22.
//

import UIKit

class ResultsController: UIViewController {
    
    var myResults:[Double] = []
    
    @IBOutlet weak var rmr: UILabel!
        
    @IBOutlet weak var factor11: UILabel!
    
    @IBOutlet weak var factor12: UILabel!
    
    @IBOutlet weak var factor13: UILabel!
    
    @IBOutlet weak var factor14: UILabel!
    
    @IBOutlet weak var factor15: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rmr.text = String(myResults[0])
        factor11.text = String(myResults[1])
        factor12.text = String(myResults[2])
        factor13.text = String(myResults[3])
        factor14.text = String(myResults[4])
        factor15.text = String(myResults[5])
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
