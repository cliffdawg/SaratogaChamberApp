//
//  SecondViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Clifford Yin on 7/18/16.
//  Copyright © 2016 Clifford Yin. All rights reserved.
//

import UIKit

/* Direct connection to the Saratoga Chamber App website */
class SecondViewController: UIViewController {

    // Web page displayed on this
    @IBOutlet weak var Webview: UIWebView!
    @IBOutlet weak var navigationTitle: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://scc.saratogachamber.org/events/")
        let request = URLRequest(url: url!)
        Webview.loadRequest(request)
    }
}

