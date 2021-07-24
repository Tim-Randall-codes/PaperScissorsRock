//
//  Variables.swift
//  PaperScissorsRock
//
//  Created by Tim Randall on 24/7/21.
//

import Foundation
enum Page {
    case page1
    case page2
}
class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}
var displayResult: String = ""
class stringStorage: ObservableObject {
    @Published var store: String = ""
}
class intStorage: ObservableObject {
    @Published var store: Int = 0
}
