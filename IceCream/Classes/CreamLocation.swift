//
//  CreamLocation.swift
//  IceCream
//
//  Created by Moritz Sternemann on 27.09.19.
//  Copyright © 2019 蔡越. All rights reserved.
//

import CoreLocation
import RealmSwift

public class CreamLocation: Object {
    @objc dynamic var latitude: CLLocationDegrees = 0.0
    @objc dynamic var longitude: CLLocationDegrees = 0.0

    public var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }

    public convenience init(location: CLLocation) {
        self.init()
        latitude = location.coordinate.latitude
        longitude = location.coordinate.longitude
    }
}
