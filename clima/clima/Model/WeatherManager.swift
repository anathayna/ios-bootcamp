//
//  WeatherManager.swift
//  clima
//
//  Created by Ana Thayna Franca on 12/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

//API Key d712dea299c988a43cbe05fdc55ff6ce
//http://api.openweathermap.org/data/2.5/weather?q=brazil&appid=d712dea299c988a43cbe05fdc55ff6ce
//http://api.openweathermap.org/data/2.5/weather?appid=d712dea299c988a43cbe05fdc55ff6ce&q=brazil&units=metric

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=d712dea299c988a43cbe05fdc55ff6ce&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)    }
    
    func performRequest(urlString: String) {
        // 1. Create URL
        
        if let url = URL(string: urlString) {
            // 2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            
            // 3. Give session task
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString)
                }
            }
            
            // 4. Start task
            
            task.resume()
            
        }
        
    }
    
}
