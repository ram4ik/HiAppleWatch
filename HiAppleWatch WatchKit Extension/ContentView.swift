//
//  ContentView.swift
//  HiAppleWatch WatchKit Extension
//
//  Created by ramil on 24.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var sentense = EmojiSentence()
    
    var body: some View {
        VStack {
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                // 1
                .overlay(
                    // 2
                    Text(sentense.emoji)
                        // 3
                        .font(.title3)
                        .padding(.top, 10)
                        .buttonStyle(.plain)
                    
                    
                )
            
            Text(sentense.text)
                .font(.caption)
                .padding(.top, 20)
        }
        .onTapGesture {
            sentense.next()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
