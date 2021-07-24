//
//  ContentViewB.swift
//  PaperScissorsRock
//
//  Created by Tim Randall on 24/7/21.
//

import SwiftUI

struct ContentViewB: View {
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var displayComputerResult: stringStorage
    @ObservedObject var displayUserSelection: stringStorage
    @ObservedObject var displayGameResult: stringStorage
    @ObservedObject var wins: intStorage
    @ObservedObject var loses: intStorage
    var body: some View {
        VStack{
            Text("Results ^^")
                .padding()
            Spacer()
            Text("The computer selected \(displayComputerResult.store). You selected \(displayUserSelection.store). So you \(displayGameResult.store).")
                .padding()
            Button("Play again", action:{
                viewRouter.currentPage = .page1
            })
            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack{
                Text("Wins \(wins.store)")
                Spacer()
                Text("Loses \(loses.store)")
            }
        }
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB(viewRouter: ViewRouter(), displayComputerResult: stringStorage(), displayUserSelection: stringStorage(), displayGameResult: stringStorage(), wins: intStorage(), loses: intStorage())
    }
}
