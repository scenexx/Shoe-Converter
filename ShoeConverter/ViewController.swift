//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Michael Ferdinand on 4/4/15.
//  Copyright (c) 2015 Edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedSizeLabel: UILabel!
    let conversionConstant:Int = 30
    
    @IBAction func convertButtonPressed(sender: AnyObject) {
        let sizeFrimField = mensShoeSizeTextField.text
        let numberFromTextField = sizeFrimField.toInt()
        var integerFromTextField:Int = numberFromTextField!
        
        integerFromTextField += conversionConstant
        mensConvertedSizeLabel.hidden = false
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        mensConvertedSizeLabel.text = stringWithUpdatedShoeSize
        
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

