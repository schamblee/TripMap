//
//  ContactsNavBarViewController.swift
//  TripDashboard
//
//  Created by stephanie Chamblee on 7/19/17.
//  Copyright © 2017 Stephanie Chamblee. All rights reserved.
//

import UIKit

class ContactsNavBarViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func awakeFromNib() {
        self.tabBarItem.title = "Team Phones"
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
