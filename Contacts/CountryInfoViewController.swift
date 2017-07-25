//
//  TripInfoViewController.swift
//  TripDashboard
//
//  Created by stephanie Chamblee on 7/18/17.
//  Copyright © 2017 Stephanie Chamblee. All rights reserved.
//

import UIKit
class CountryInfoViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    var webviewURL: URL = URL(string: "https://travel.state.gov/content/passports/en/country/thailand.html")!
    var webviewURL2: URL = URL(string: "https://wwwnc.cdc.gov/travel/destinations/traveler/none/thailand?s_cid=ncezid-dgmq-travel-single-001")!
    var webviewURL3: URL = URL(string: "https://docs.google.com/document/d/1KClHbUUbQt80VVPUxm1U1tQHaFoU86TsnGZDcTlikZc/edit?usp=sharing")!
    
    @IBOutlet weak var countrySC: UISegmentedControl!
    
    
    @IBAction func indexChange(_ sender: UISegmentedControl) {
        switch countrySC.selectedSegmentIndex {
        case 0:
            let requestObj = URLRequest(url: webviewURL)
            webView.loadRequest(requestObj)
        case 1:
            let requestObj = URLRequest(url: webviewURL2)
            webView.loadRequest(requestObj)
        case 2:
            let requestObj = URLRequest(url: webviewURL3)
            webView.loadRequest(requestObj)
        default:
            break;
        }
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "CountryInfoViewController", bundle: nil)
    }
    
    convenience init() {
        self.init(nibName: "CountryInfoViewController", bundle: nil)
        //set the tab bar item's title
        tabBarItem.title = "title"
        
        //put an image on the tab bar item
        tabBarItem.image = UIImage(named: "image")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let requestObj = URLRequest(url: webviewURL)
        webView.loadRequest(requestObj)
    }
    override func awakeFromNib() {
        self.tabBarItem.title = "Country Info"
    }
}
