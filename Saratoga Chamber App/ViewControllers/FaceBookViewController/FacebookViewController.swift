//
//  FacebookViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Clifford Yin on 7/19/16.
//  Copyright © 2016 Clifford Yin. All rights reserved.
//

import UIKit

/* Online link to Saratoga Chamber app Facebook */
class FacebookViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.facebook.com/SaratogaChamberCA/?fref=ts")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
