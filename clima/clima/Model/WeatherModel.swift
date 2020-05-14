//
//  WeatherModel.swift
//  clima
//
//  Created by Ana Thayna Franca on 14/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionalId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%1.f", temperature)
    }
    
    var conditionalName: String {
        switch conditionalId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
