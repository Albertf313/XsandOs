//
//  GameView.swift
//  XsandOs
//
//  Created by Albert Florido  on 10/13/23.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Hello, World!")
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("End Game") {
                            dismiss()
                        }
                        .buttonStyle(.bordered)
                    }
                }
                .navigationTitle("Xs And Os")
                .inNavigationStack()
        }
    }
    
}
    
    #Preview {
        GameView()
    }
    

