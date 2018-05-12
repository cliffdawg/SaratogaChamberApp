//
//  MembersViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Clifford Yin on 7/19/16.
//  Copyright © 2016 Clifford Yin. All rights reserved.
//
import UIKit

/* Direct link to member roster and responsibilities */
class MembersViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://saratogachamber.org/board-staff/")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
