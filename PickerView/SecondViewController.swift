//
//  SecondViewController.swift
//  PickerView
//
//  Created by Ogulcan Kara on 13.08.2022.
//

import UIKit

class SecondViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var textfieldSehir: UITextField!
    
    var pickerview2 : UIPickerView?
    
    var sehirler : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirler = ["Istanbul","Berlin","Tokyo","Moskova","Roma","Paris"]
        
        pickerview2 = UIPickerView()
        pickerview2?.dataSource = self
        pickerview2?.delegate = self
        
        textfieldSehir.inputView = pickerview2
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sehirler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sehirler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldSehir.text = sehirler[row]
    }
    
}
