//
//  ViewController.swift
//  CoreiOS
//
//  Created by Szi Gabor on 3/28/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    
    let states = ["Hawaii", "New York", "California", "Texas", "Colorado", "Florida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let rectObject = CGRect(x: statePickerButton.frame.maxX + 4, y: statePickerButton.frame.maxY - 8, width: 50, height: 10)
        
        let textfield1: UITextField = UITextField(frame: rectObject)
        textfield1.borderStyle = UITextBorderStyle.roundedRect
        self.view.addSubview(textfield1)  
         
    //Create TextField
        
        if statePicker.isHidden == false {
            textfield1.isHidden = true
        }
        
        statePicker.delegate = self
        statePicker.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
   //     self.view.backgroundColor = UIColor.cyan
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
    }
}



