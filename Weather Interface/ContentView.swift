//
//  ContentView.swift
//  Weather Interface
//
//  Created by Ali Butt on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(color1: .blue, color2: Color("lightBlue"))
            VStack {
                Text("Lahore")
                    .font(.system(size: 30, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack (spacing: 10) {
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                    Text("82°")
                        .font(.system(size: 50, weight: .medium, design: .default))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Spacer()
                HStack (spacing: 20) {
                    Spacer()
                    DayView(weekDay: "TUE",
                            weatherImage: "cloud.sun.fill",
                            temperature: 77)
                    DayView(weekDay: "WED",
                            weatherImage: "sun.max.fill",
                            temperature: 77)
                    DayView(weekDay: "THU",
                            weatherImage: "cloud.rain.fill",
                            temperature: 77)
                    DayView(weekDay: "FRI",
                            weatherImage: "wind.snow",
                            temperature: 77)
                    DayView(weekDay: "SAT",
                            weatherImage: "cloud.sun.fill",
                            temperature: 77)
                    DayView(weekDay: "SUN ",
                            weatherImage: "sun.max.fill",
                            temperature: 77)
                    
                    Spacer()
                }
                Spacer()
                Button("Change Time of Day") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.blue)
                .padding()
                .background(.white)
                .cornerRadius(10)

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DayView: View {
    var weekDay: String
    var weatherImage: String
    var temperature: Int
     
    var body: some View {
        VStack (spacing: 10) {
            Text(weekDay)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var color1: Color
    var color2: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [color1, color2]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
