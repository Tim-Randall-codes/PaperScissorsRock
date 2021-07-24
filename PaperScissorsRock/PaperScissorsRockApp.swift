//
//  PaperScissorsRockApp.swift
//  PaperScissorsRock
//
//  Created by Tim Randall on 24/7/21.
//

import SwiftUI

@main
struct PaperScissorsRockApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var displayComputerResult = stringStorage()
    @StateObject var displayUserSelection = stringStorage()
    @StateObject var displayGameResult = stringStorage()
    @StateObject var wins = intStorage()
    @StateObject var loses = intStorage()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter, displayComputerResult: displayComputerResult, displayUserSelection: displayUserSelection, displayGameResult: displayGameResult, wins: wins, loses: loses)
        }
    }
}
