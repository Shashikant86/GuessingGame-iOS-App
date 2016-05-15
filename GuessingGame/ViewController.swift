//
//  ViewController.swift
//  GuessingGame
//
//  Created by Shashikant Jagtap on 14/05/2016.
//  Copyright © 2016 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNum: UITextField!
    
    @IBOutlet weak var result: UILabel!
    @IBAction func Submit(sender: AnyObject) {
        
      
        
        let random = String(arc4random_uniform(6))
        
        
        if random == userNum.text {
            result.text = "Success"
            result.hidden = false
            result.backgroundColor = UIColor.greenColor()
            
        } else {
            
            result.text = "Wrong! it was \(random)"
            result.hidden = false
            result.backgroundColor = UIColor.redColor()
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

