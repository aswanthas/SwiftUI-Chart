//
//  ChartDataModel.swift
//  SwiftUIChart
//
//  Created by Aswanth K on 23/06/24.
//

import Foundation

struct ChartDataModel: Identifiable {
    var id = UUID().uuidString
    var day: String
    var hours: Int
}
