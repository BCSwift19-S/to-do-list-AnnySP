//
//  DetailViewController.swift
//  To Do List
//
//  Created by Anny Shan on 2/11/19.
//  Copyright © 2019 Jun Shan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var toDoField: UITextField!
    var toDoItem: String?
    
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let toDoItem = toDoItem {
            toDoField.text = toDoItem
        }
        toDoField.becomeFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UnwindFromSave" {
            toDoItem = toDoField.text
        }
    }
    
    @IBAction func toDoFieldChanged(_ sender: UITextField) {
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    

}
