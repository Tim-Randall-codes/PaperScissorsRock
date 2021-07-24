//
//  MotherView.swift
//  PaperScissorsRock
//
//  Created by Tim Randall on 24/7/21.
//

import SwiftUI

struct MotherView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var displayComputerResult: stringStorage
    @StateObject var displayUserSelection: stringStorage
    @StateObject var displayGameResult: stringStorage
    @StateObject var wins: intStorage
    @StateObject var loses: intStorage
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentView(viewRouter: viewRouter, displayComputerResult: displayComputerResult, displayUserSelection: displayUserSelection, displayGameResult: displayGameResult, wins: wins, loses: loses)
        case .page2:
            ContentViewB(viewRouter: viewRouter, displayComputerResult: displayComputerResult, displayUserSelection: displayUserSelection, displayGameResult: displayGameResult, wins: wins, loses: loses)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), displayComputerResult: stringStorage(), displayUserSelection: stringStorage(), displayGameResult: stringStorage(), wins: intStorage(), loses: intStorage())
    }
}
