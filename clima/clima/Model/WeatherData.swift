//
//  WeatherData.swift
//  clima
//
//  Created by Ana Thayna Franca on 14/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

// Decodable & Encodable = Codable (typealias)

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
