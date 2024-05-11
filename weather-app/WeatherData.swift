//
//  WeatherDataFramework.swift
//  weather-app
//
//  Created by Himprakash Das on 11/05/24.
//

import Foundation

struct WeatherData: Hashable, Identifiable{
    let id = UUID()
    let weekDay: String
    let imageName: String
    let temperature: Int
}


struct Data{
    
    static let weatherData = [
        WeatherData(weekDay:"TUE",
                   imageName: "cloud.sun.fill",
                    temperature: 30),
        WeatherData(weekDay: "WED",
                    imageName: "cloud.rain.fill",
                    temperature: 22),
        WeatherData(weekDay: "THU",
                    imageName: "cloud.fill",
                    temperature: 25),
        WeatherData(weekDay: "FRI",
                    imageName: "cloud.hail.fill",
                    temperature: 19),
        WeatherData(weekDay: "SAT",
                    imageName: "sun.max.fill",
                    temperature: 32),
        
    ]
    
}
