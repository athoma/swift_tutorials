//
//  ViewController.swift
//  Color Picker
//
//  Created by Adam Thoma-Perry on 10/8/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var color: [Colors] = [Colors(color: "Red", background: UIColor.red),
                           Colors(color: "Orange", background: UIColor.orange),
                           Colors(color: "Yellow", background: UIColor.yellow),
                           Colors(color: "Green", background: UIColor.green),
                           Colors(color: "Blue", background: UIColor.blue),
                           Colors(color: "Purple", background: UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        colorLabel.text = color[0].color
        self.view.backgroundColor = color[0].background
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row].color
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = color[row].background
        colorLabel.text = color[row].color
    }
    
}

