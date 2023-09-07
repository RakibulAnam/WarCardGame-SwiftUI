//
//  ContentView.swift
//  WarCardGame-SwiftUI
//
//  Created by Jotno on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var playerScore = 0
    @State var cpuCard = "card3"
    @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack() {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        
        
    }
    
    func deal(){
        
        let playerNum = Int.random(in: 2...14)
        let cpuNum = Int.random(in: 2...14)
        
        playerCard = "card\(playerNum)"
        cpuCard = "card\(cpuNum)"
        
        if playerNum > cpuNum {
            playerScore += 1
        }else if cpuNum > playerNum{
            cpuScore += 1
        }else {
            playerScore = 0
            cpuScore = 0
        }
        
        print("\(playerNum)")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
