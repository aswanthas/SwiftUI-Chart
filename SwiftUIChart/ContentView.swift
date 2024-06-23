//
//  ContentView.swift
//  SwiftUIChart
//
//  Created by Aswanth K on 23/06/24.
//

import SwiftUI
import Charts // Step 2

struct ContentView: View {
    // MARK: Step 1
    @State var selected: Int = 0
    var data = [ChartDataModel(day: "Mon", hours: 6),
                ChartDataModel(day: "Tue", hours: 6),
                ChartDataModel(day: "Wed", hours: 10),
                ChartDataModel(day: "Thu", hours: 5),
                ChartDataModel(day: "Fri", hours: 8)]
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: barMarkChart) {
                    Text("Bar Mark Chart")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: pointMarkChart) {
                    Text("Point Mark Chart")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: lineMarkChart) {
                    Text("Line Mark Chart")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: areaMarkChart) {
                    Text("Area Mark Chart")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Chart Navigation")
        }
    }
    
    // MARK: BarMarkChart
    var barMarkChart: some View {
        Chart {
            ForEach(data) { data in
                BarMark(
                    x: PlottableValue.value("Day", data.day),
                    y: .value("Hours", data.hours)
                )
            }
        }
        .padding()
    }
    
    // MARK: PointMarkChart
    var pointMarkChart: some View {
        Chart {
            ForEach(data) { data in
                PointMark(
                    x: PlottableValue.value("Day", data.day),
                    y: .value("Hours", data.hours)
                )
            }
        }
        .padding()
    }
    
    // MARK: LineMarkChart
    var lineMarkChart: some View {
        Chart {
            ForEach(data) { data in
                LineMark(
                    x: .value("Day", data.day),
                    y: .value("Hours", data.hours)
                )
            }
        }
        .padding()
    }
    
    // MARK: AreaMarkChart
    var areaMarkChart: some View {
        Chart {
            ForEach(data) { data in
                AreaMark(
                    x: .value("Day", data.day),
                    y: .value("Hours", data.hours)
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
