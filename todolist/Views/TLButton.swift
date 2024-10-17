//
//  TLButton.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/22/24.
//

import SwiftUI

struct TLButton: View{
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label : {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.purple)
                Text (title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", background: .pink) {
            //action
        }
    }
}
