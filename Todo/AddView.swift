//
//  AddView.swift
//  Todo
//
//  Created by 渡辺涼太 on 2022/08/21.
//

import UIKit
import RealmSwift

class AddView: UIViewController {

    @IBOutlet weak var itemField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker.timeZone = TimeZone.current
        datePicker.locale = Locale.current
        
    }
    
    @IBAction func onAdd(_ sender: Any) {
        InfoHelper().save(title:itemField.text!,date:datePicker.date)
        dismiss(animated: true, completion: nil)
    }
    
}
