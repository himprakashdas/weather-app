//
//  ContentView.swift
//  weather-app
//
//  Created by Himprakash Das on 10/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Bongaigaon, AS")
                
                MainWeatherStat(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                temperature: 30)
                
//                Spacer()
                
                HStack(spacing: 25) {
                    ForEach(Data.weatherData){data in
                        WeatherDayView(data: data)
                    }
                
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                } label:{
                    WeatherButtonView(buttonLabel: "Change Day Time", textColor: isNight ? .black : .blue, backgroundColor: .white)
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    ContentView()
}

// Weather details for the day
struct WeatherDayView: View {
    
    var data: WeatherData
    
    var body: some View {
        VStack{
            Text(data.weekDay)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName:data.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 40, height: 40)
            Text("\(data.temperature)°")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

// Background color
struct BackgroundView: View {
    
    @Binding var isNight : Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color.lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

// City Text 
struct CityTextView: View{
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStat: View{
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing:20) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 70)
    }
}
