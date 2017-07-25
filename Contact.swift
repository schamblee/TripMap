//
//  Contact.swift
//  Contacts
//
//  Created by stephanie Chamblee on 7/17/17.
//  Copyright © 2017 Stephanie Chamblee. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var name: String?
    var phoneNumber: String?
    
    init(name: String? = nil, phoneNumber: String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        super.init()
    }

}
