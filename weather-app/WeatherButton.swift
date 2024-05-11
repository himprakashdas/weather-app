//
//  WeatherButton.swift
//  weather-app
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI

// button view
struct WeatherButtonView: View{
    
    var buttonLabel: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text(buttonLabel)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size:20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
