//
//  FirstViewController.swift
//  Saratoga Chamber App
//
//  Created by Shivaum Kumar on 7/18/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import UIKit
import MapKit


/* Handles the search for the type of events the user wants */
class FirstViewController: UIViewController {
    
    var search = ""
    let mapViewController = MapViewController()
    
    
    @IBAction func restaurants(_ sender: AnyObject) {
        search = "restaurants around me"
    }
    
    @IBAction func hiking(_ sender: AnyObject) {
        search = "trails around me"
    }
    
    @IBAction func parks(_ sender: AnyObject) {
        search = "parks around me"
    }
    
    @IBAction func games(_ sender: AnyObject) {
        search = "events around me"
    }

    @IBAction func museums(_ sender: AnyObject) {
        search = "museums around me"
    }
    
    @IBAction func church(_ sender: AnyObject) {
        search = "churches around me"
    }

    @IBAction func hotels(_ sender: AnyObject) {
        search = "hotels around me"
    }
    
    @IBAction func entertainment(_ sender: Any) {
        search = "games around me"
    }
    
    @IBAction func banks(_ sender: AnyObject) {
         search = "banks around me"
    }
    
    @IBAction func wine(_ sender: AnyObject) {
        search = "bars around me"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let locationVC = segue.destination as! MapViewController
        locationVC.searchTerm = (((sender as AnyObject).accessibilityLabel)!! + " around me")
        print ("search term using label " + locationVC.searchTerm)
        segue.destination.title = (sender as AnyObject).accessibilityLabel
        print ("search term from first view " + search)
        print ((sender as AnyObject).accessibilityLabel)
    }
 
}




