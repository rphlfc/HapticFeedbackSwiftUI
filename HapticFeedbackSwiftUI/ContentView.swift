//
//  ContentView.swift
//  HapticFeedbackSwiftUI
//
//  Created by Raphael Cerqueira on 21/06/21.
//

import SwiftUI

// pt-BR
// Para testar o retorno tátil é necessário rodar no aparelho

// en-US
// In order to test the haptic feedback you should run it on the device

// That's it

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("selection")) {
                    Text("selection")
                        .onTapGesture {
                            performSelectionFeedback()
                        }
                }
                
                Section(header: Text("impact")) {
                    Text("light")
                        .onTapGesture {
                            performImpactFeedback(style: .light)
                        }
                    
                    Text("medium")
                        .onTapGesture {
                            performImpactFeedback(style: .medium)
                        }
                    
                    Text("heavy")
                        .onTapGesture {
                            performImpactFeedback(style: .heavy)
                        }
                    
                    Text("soft")
                        .onTapGesture {
                            performImpactFeedback(style: .soft)
                        }
                    
                    Text("rigid")
                        .onTapGesture {
                            performImpactFeedback(style: .rigid)
                        }
                    
                }
                
                Section(header: Text("notification")) {
                    Text("success")
                        .onTapGesture {
                            performNotificationFeedback(type: .success)
                        }
                    
                    Text("warning")
                        .onTapGesture {
                            performNotificationFeedback(type: .warning)
                        }
                    
                    Text("error")
                        .onTapGesture {
                            performNotificationFeedback(type: .error)
                        }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Haptic Feedback")
        }
    }
    
    func performSelectionFeedback() {
        print("selection")
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
    func performImpactFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        print("impact")
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
    
    func performNotificationFeedback(type: UINotificationFeedbackGenerator.FeedbackType) {
        print("notification")
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
