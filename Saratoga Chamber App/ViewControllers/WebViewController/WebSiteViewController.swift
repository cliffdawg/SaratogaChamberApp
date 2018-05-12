//
//  WebSiteViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Clifford Yin on 7/19/16.
//  Copyright © 2016 Clifford Yin. All rights reserved.
//

import UIKit

class WebSiteViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://www.saratogachamber.org/index.php")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
