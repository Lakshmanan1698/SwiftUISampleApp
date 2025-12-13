//
//  UnitConversionView.swift
//  SwiftUISampleApp
//
//  Created by Lakshmanan on 13/12/25.
//

import SwiftUI

struct UnitConversionView: View {
    
    @State private var fromUnit = "km"
    @State private var toUnit = "km"
    
    @State private var fromValue = 0
    @State private var convertedValue: String = ""
    @FocusState private var isFromValueFocussed: Bool
    
    private let units: [String] = ["km", "m", "ft", "yards"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section("From") {
                    Picker("From", selection: $fromUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("To") {
                    Picker("To", selection: $toUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("From value") {
                    TextField("From value", value: $fromValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isFromValueFocussed)
                }
                
                Section("Result") {
                    Text("\(convertedValue)")
                }
            }
            .navigationTitle("Unit convertor")
            .toolbar {
                if isFromValueFocussed {
                    Button("Done") {
                        isFromValueFocussed = false
                        var baseConverted = Double(fromValue)
                        switch fromUnit {
                        case "km":
                            baseConverted *= 1000
                            
                        case "m":
                            break
                            
                        case "ft":
                            baseConverted /= 3.281
                            
                        case "yards":
                            baseConverted /= 1.094
                            
                        case _:
                            break
                        }
                        
                        switch toUnit {
                        case "km":
                            convertedValue = (baseConverted / 1000.0).formatted()
                            
                        case "m":
                            convertedValue = baseConverted.formatted()
                            
                        case "ft":
                            convertedValue = (baseConverted * 3.281).formatted()
                            
                        case "yards":
                            convertedValue = (baseConverted * 1.094).formatted()
                            
                        case _:
                            break
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    UnitConversionView()
}
