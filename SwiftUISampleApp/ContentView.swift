//
//  ContentView.swift
//  SwiftUISampleApp
//
//  Created by Lakshmanan on 04/12/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
    }
    
}

#Preview {
    ContentView()
}

/*
 struct ContentView: View {
     
     @State private var checkAmount = 0.0
     @State private var numberOfPeople = 0
     @State private var tipPercentage = 20
     @FocusState private var checkAmountFocussed: Bool
     
     let tipPercentages = [0, 10, 15, 20, 25]
     
     var totalPerPerson: Double {
         return (checkAmount + ((checkAmount * Double(tipPercentage)) / 100)) / Double(numberOfPeople + 2)
     }
     
     var body: some View {
         NavigationStack {
             Form {
                 Section {
                     TextField("Enter amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                         .keyboardType(.numberPad)
                         .focused($checkAmountFocussed)
                     Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                 }
                 
                 Section {
                     Picker("Number of people", selection: $numberOfPeople) {
                         ForEach(2..<100) {
                             Text("\($0)")
                         }
                     }
                     .pickerStyle(.navigationLink)
                 }
                 
                 Section("How much tip to leave?") {
                     Picker("Tip percentage", selection: $tipPercentage) {
                         ForEach(tipPercentages, id: \.self) {
                             Text($0, format: .percent)
                         }
                     }
                     .pickerStyle(.segmented)
                 }
             }
             .navigationTitle("123")
             .toolbar {
                 if checkAmountFocussed {
                     Button("Done") {
                         checkAmountFocussed = false
                     }
                 }
             }
         }
     }
     
 }
 */

/*
 struct ContentView: View {
     @State var clickCount = 0
     @State var text = ""
     
     var arr: [String] = ["world", "app", "hello"]
     @State var selectedRow = "hello"
     
     var body: some View {
         NavigationStack {
             Form {
                 Section {
                     VStack {
                         Text("Hello \(text)")
                         Text("Hello")
                         Text("Hello")
                         Text("Hello")
                         TextField("Another Placeholder", text: $text, axis: .horizontal)
                         TextField("Type here..", text: $text)
                     }
                     
                     Button("Click to Submit: \(clickCount)") {
                         self.clickCount += 1
                         self.text = "\(clickCount)"
                     }
                 }
                 
                 Section  {
                     Text("Hello")
                     Text("Hello")
                     Text("Hello")
                     Text("Hello")
                     Picker("Select row", selection: $selectedRow) {
                         ForEach(arr, id: \.self) {
                             Text($0)
                         }
                     }
                 }
                 
                 ForEach(0..<10) {
                     Text("Row = \($0)")
                 }
             }
             .navigationTitle("Navigation Stack")
             .navigationBarTitleDisplayMode(.automatic)
         }
         
         VStack {
             Image(systemName: "globe")
                 .imageScale(.large)
                 .foregroundStyle(.tint)
             Text("Hello, world!")
         }
         .padding()
     }
     
 }
 */
