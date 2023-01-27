//
//  SecondViewController.swift
//  BackDataPassingusingclosear
//
//  Created by Mac on 27/01/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var fristname: UITextField!
    
    @IBOutlet weak var lastname: UITextField!
    
    @IBOutlet weak var rollnum: UITextField!
    var FristName : String=""
    var LastName : String=""
    var RollNum : String=""
    
    var DATAFROMSVC:((String,String,String)->Void)?
    
    @IBAction func BACKWORDBTN(_ sender: Any) {
        
        guard let dataonsvc = DATAFROMSVC else {
            return
        
        }
        
        
        FristName=self.fristname.text!
        LastName=self.lastname.text!
        RollNum=self.rollnum.text!
        
        dataonsvc(FristName,LastName,RollNum)
        
        navigationController?.popViewController(animated: true)
        
        
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
