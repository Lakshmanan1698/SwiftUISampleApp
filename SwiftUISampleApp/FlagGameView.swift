//
//  FlagGameView.swift
//  SwiftUISampleApp
//
//  Created by Lakshmanan on 25/12/25.
//

import SwiftUI

struct FlagGameView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var scoreTitle = ""
    @State private var alertMessage = ""
    @State private var showingScore = false
    @State private var showingCompletion = false
    @State private var attendedCount = 0
    
    @State private var currentScore = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [ .init(color: .blue, location: 0.3),
                                    .init(color: .red,  location: 0.5),
                                    .init(color: .yellow,  location: 0.7),
                                    .init(color: .orange,  location: 0.9)], center: .top, startRadius: 100, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Spacer()
                Spacer()
                Text("Score: \(currentScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                        }
                        .clipShape(.capsule)
                        .shadow(radius: 5, x: 5, y: 5)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(alertMessage)
        }
        .alert("Done! Your score is \(currentScore)", isPresented: $showingCompletion) {
            Button("Reset") {
                currentScore = 0
                attendedCount = 0
            }
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            currentScore += 1
            alertMessage = "Your score is \(currentScore)"
        } else {
            scoreTitle = "Wrong"
            alertMessage = "That is \(countries[number])'s flag"
        }
        
        showingScore = true
        attendedCount += 1
        if attendedCount == 2 {
            showingCompletion = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
}

#Preview {
    FlagGameView()
}
