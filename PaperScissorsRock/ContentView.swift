//
//  ContentView.swift
//  PaperScissorsRock
//
//  Created by Tim Randall on 24/7/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var selection: Int = 0
    @StateObject var displayComputerResult: stringStorage
    @StateObject var displayUserSelection: stringStorage
    @StateObject var displayGameResult: stringStorage
    @StateObject var wins: intStorage
    @StateObject var loses: intStorage
    var body: some View {
        VStack{
            Text("Rock, Paper, Scissors!")
                .padding()
            Spacer()
            Button("Rock", action:{
                selection = 0
                displayUserSelection.store = "rock"
                game()
            })
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding()
            Button("Paper", action:{
                selection = 1
                displayUserSelection.store = "paper"
                game()
            })
            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding()
            Button("Scissors", action:{
                selection = 2
                displayUserSelection.store = "scissors"
                game()
            })
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding()
            Spacer()
            HStack{
                Text("Wins \(wins.store)")
                Spacer()
                Text("Loses: \(loses.store)")
            }
        }
    }
    func game () {
        let randomInt = Int.random(in: 0...2)
        if randomInt == 0 {
            displayComputerResult.store = "rock"
        }
        else if randomInt == 1 {
            displayComputerResult.store = "paper"
        }
        else if randomInt == 2 {
            displayComputerResult.store = "scissors"
        }
        //win
        if selection == 0 && randomInt == 2 || selection == 1 && randomInt == 0 || selection == 2 && randomInt == 1 {
            displayGameResult.store = "won"
            wins.store += 1
        }
        //same selection by user and computer
        else if selection == 0 && randomInt == 0 || selection == 1 && randomInt == 1 || selection == 2 && randomInt == 2 {
            displayGameResult.store = "got a draw"
        }
        //lose
        else {
            displayGameResult.store = "lost"
            loses.store += 1
        }
        viewRouter.currentPage = .page2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), displayComputerResult: stringStorage(), displayUserSelection: stringStorage(), displayGameResult: stringStorage(), wins: intStorage(), loses: intStorage())
    }
}
