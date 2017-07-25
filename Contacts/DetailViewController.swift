//
//  DetailViewController.swift
//  Contacts
//
//  Created by stephanie Chamblee on 7/17/17.
//  Copyright © 2017 Stephanie Chamblee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneNumberField: UITextField!
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.phoneNumberField.delegate = self

        if let contact = self.contact {
            if let name = contact.name {
                self.nameLabel.text = name
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.phoneNumberField {
            self.contact?.phoneNumber = textField.text
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
