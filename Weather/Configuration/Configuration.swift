//
//  Configuration.swift
//  Weather
//
//  Created by Brian Presser on 9/5/17.
//  Copyright © 2017 Brian Presser. All rights reserved.
//

import Foundation

struct Defaults {
    
    static let Latitude: Double = 37.8267
    static let Longitude: Double = -122.423
    
}

struct API {
    
    static let APIKey = "972669064b845c1a62b7bef8ddced859"
    static let BaseURL = URL(string: "https://api.forecast.io/forecast/")!
    
    static var AuthenticatedBaseURL: URL {
        return BaseURL.appendingPathComponent(APIKey)
    }
    
}

