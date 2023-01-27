//
//  ViewController.swift
//  BackDataPassingusingclosear
//
//  Created by Mac on 27/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var FRISTNAMELABAL: UILabel!
    
    @IBOutlet weak var LASTNAMELABAL: UILabel!
    
    @IBOutlet weak var ROLLNUMLABAL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    
    
    
    
    @IBAction func FORWORDBTN(_ sender: Any) {
        
        let SVC = (self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController)
        SVC.DATAFROMSVC={
            (FristName,LastName,RollNum) in
        
        self.FRISTNAMELABAL.text = FristName
        self.LASTNAMELABAL.text = LastName
        self.ROLLNUMLABAL.text = RollNum
        
        
        
        }
        self.navigationController?.pushViewController(SVC, animated: true)
        
    }
    
    
    
   

}

