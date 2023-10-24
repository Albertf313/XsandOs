//
//  SqaureView.swift
//  XsandOs
//
//  Created by Albert Florido  on 10/13/23.
//

import SwiftUI

struct SqaureView: View {
    @EnvironmentObject var game: GameService
    let index: Int
    var body: some View {
        Button {
            game.makeMove(at: index)
        }label: {
            game.gameBoard[index].image
                .resizable()
                .frame(width: 100, height: 100)
                
        }
        .disabled(game.gameBoard[index].player != nil)
        .foregroundColor(.primary)
    }
}

#Preview {
    SqaureView(index: 1)
        .environmentObject(GameService())
}
