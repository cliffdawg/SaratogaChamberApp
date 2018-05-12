//
//  CustomAnnotation.swift
//  Hearth
//
//  Created by Clifford Yin on 3/26/17.
//  Copyright © 2017 Clifford Yin. All rights reserved.
//

import UIKit
import MapKit

/* Code that constitutes an important located event around the user */
class CustomAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var detailURL: URL
    var enableInfoButton: Bool
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String, detailURL: URL, enableInfoButton: Bool) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.detailURL = detailURL
        self.enableInfoButton = enableInfoButton
        super.init();
    }
    
}
