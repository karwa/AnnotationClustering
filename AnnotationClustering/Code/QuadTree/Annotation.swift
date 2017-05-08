//
//  Annotation.swift
//  AnnotationClustering
//
//  Created by nextbike on 05/05/2017.
//  Copyright © 2017 Gunter Hager. All rights reserved.
//

import MapKit

public protocol Annotation {
    var coordinate: CLLocationCoordinate2D { get }
}
public class MKAnnotationWrapper<T: MKAnnotation>: NSObject, Annotation {
    public let base: T
    public var coordinate: CLLocationCoordinate2D { return base.coordinate }
    
    public init(_ base: T) {
        self.base = base
    }
}
