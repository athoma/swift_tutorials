//
//  ViewController.swift
//  ColorPicker
//
//  Created by Adam Thoma-Perry on 10/13/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    var colorsArray: [Colors] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPickerView.dataSource = self
        colorPickerView.delegate = self
        loadColors()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadColors() {
        colorsArray += [Colors(colorName: "cyan", backgroundColor: UIColor.cyan),
                        Colors(colorName: "gray", backgroundColor: UIColor.gray),
                        Colors(colorName: "magenta", backgroundColor: UIColor.magenta),
                        Colors(colorName: "red", backgroundColor: UIColor.red)
                        ]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsArray[row].colorName
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colorsArray[row].backgroundColor
        colorLabel.text = colorsArray[row].colorName
    }
}

