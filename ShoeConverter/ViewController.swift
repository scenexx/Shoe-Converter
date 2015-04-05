//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Michael Ferdinand on 4/4/15.
//  Copyright (c) 2015 Edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shoeSizeTextField: UITextField!
    @IBOutlet weak var convertedSizeLabel: UILabel!

    
    @IBAction func convertButtonPressed(sender: UIButton) {
        var conversion:Double// added to American shoe size
        
        //determine conversion
        if sender.currentTitle == "Women's Size"{
            conversion = 30.5
        }
        else{
            conversion = 30
        }
        
        var shoeSize:Double = Double((shoeSizeTextField.text as NSString).doubleValue)
        convertedSizeLabel.text = "\(shoeSize + conversion)"
        convertedSizeLabel.hidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

