//
//  AddEmployeeViewController.swift
//  CoreDataExample
//
//  Created by avnish kumar on 19/06/17.
//  Copyright © 2017 avnish kumar. All rights reserved.
//

import Cocoa

class AddEmployeeViewController: NSViewController {
    //MARK:- IBOutlets
    @IBOutlet weak var idTextView: NSTextField!
    @IBOutlet weak var nameTextView: NSTextField!
    @IBOutlet weak var contactNoTextField: NSTextField!
    
    //MARK:- Properties
    weak var delegate: EmployeeInfoUpdaterDelegate?
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    //MARK:- IBActions
    @IBAction func addEmployee(_ sender: NSButton) {
        if contactNoTextField.stringValue != Constants.emptyString && nameTextView.stringValue != Constants.emptyString && idTextView.stringValue != Constants.emptyString {
            let employee = Employee(id: idTextView.stringValue, name: nameTextView.stringValue, contactNumber: contactNoTextField.stringValue)
            self.delegate?.updateEmployeeTable(employee: employee)
        }
        self.dismissViewController(self)
    }
}

