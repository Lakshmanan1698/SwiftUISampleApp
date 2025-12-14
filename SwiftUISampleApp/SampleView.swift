//
//  SampleView.swift
//  SwiftUISampleApp
//
//  Created by Lakshmanan on 14/12/25.
//

import SwiftUI

struct SampleView: View {
    
    @State private var isAlertShown = false
    @State private var text = ""
    
    var body: some View {
        VStack {
            Button("Button1", role: .destructive, action: execute)
                .buttonStyle(.bordered)
            Button("Button2", role: .destructive, action: execute)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            Button("Button3", role: .none, action: execute)
                .buttonStyle(.borderless)
                .tint(.yellow)
            Button("Button4", role: .cancel, action: execute)
                .buttonStyle(.borderedProminent)
            Button("Button5", action: execute)
                .buttonStyle(.borderedProminent)
            Button {
                print("Custom button")
                isAlertShown = true
            } label: {
                HStack {
                    Image(systemName: "globe")
                        .tint(.red)
                    Text("Button6")
                        .padding(10)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
            }
            .background(.blue)
            .cornerRadius(10)
            
            Button("Edit", systemImage: "pencil") {
                
            }
            .buttonStyle(.borderedProminent)
            
            Button() {
                
            } label: {
                Label("Delete", systemImage: "trash")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            .cornerRadius(25)
        }
        .alert("Hello alert!", isPresented: $isAlertShown) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Hello alert! Hello alert! Hello alert! Hello alert! Hello alert! Hello alert! Hello alert! Hello alert! Hello alert!")
        }
    }
    
    func execute() {
        
    }
}

#Preview {
    ContentView()
}

//        ZStack(alignment: .top) {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//
//            VStack {
//                Spacer()
//                Text("Text Content")
//                    .foregroundStyle(.primary)
//                    .padding(50)
//                    .background(.blue.gradient)
//                Spacer()
//            }
//        }
//        .ignoresSafeArea()
//
//        Form {
//            VStack(alignment: .leading, spacing: 40) {
//                Spacer()
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundStyle(.tint)
//                Text("Hello, world! Hello, world! Hello, world! Hello, world! Hello, world! Hello, world!")
//                Text("Test string Test string Test string Test string Test string Test string")
//                Text("Test string Test string Test string Test string Test string Test string")
//                Spacer()
//            }
//
//            Section {
//                Text("Sample Text")
//            }
//        }
//
//        ZStack(alignment: .bottom) {
//            Text("Hello world!")
//            Text("This is sample text")
//        }
//
//        VStack {
//            Spacer()
//            HStack {
//                Spacer()
//                Text("1")
//                Spacer()
//                Text("2")
//                Spacer()
//                Text("3")
//                Spacer()
//            }
//            Spacer()
//            HStack {
//                Spacer()
//                Text("4")
//                Spacer()
//                Text("5")
//                Spacer()
//                Text("6")
//                Spacer()
//            }
//            Spacer()
//            HStack {
//                Spacer()
//                Text("7")
//                Spacer()
//                Text("8")
//                Spacer()
//                Text("9")
//                Spacer()
//            }
//            Spacer()
//        }

#Preview {
    SampleView()
}
