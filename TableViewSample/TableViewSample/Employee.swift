//
//  Employee.swift
//  TableViewSample
//
//  Created by avnish kumar on 08/09/17.
//  Copyright © 2017 avnish kumar. All rights reserved.
//
import Foundation

class Employee :NSObject {
    
    //MARK:- Properties
    var id:String
    var name:String
    var contactNumber:String
    
    //MARK:- Initilizers
    override init() {
        id = Constants.emptyString
        name = Constants.emptyString
        contactNumber = Constants.emptyString
        super.init()
    }
    
    init(id:String, name:String, contactNumber:String) {
        self.id = id
        self.name = name
        self.contactNumber = contactNumber
        super.init()
    }
}
