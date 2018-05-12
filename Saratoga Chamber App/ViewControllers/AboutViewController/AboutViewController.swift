//
//  AboutViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Clifford Yin on 7/19/16.
//  Copyright © 2016 Clifford Yin. All rights reserved.
//

import UIKit

/* Direct link to an information page about the Saratoga Chamber organization */
class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://saratogachamber.org/membership-benefits/")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
