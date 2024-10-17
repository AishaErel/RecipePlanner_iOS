//
//  HeaderView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/19/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        ZStack { //z-axis again for view
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.teal)
                .rotationEffect(Angle(degrees : -25)) // to rotate rectangle
                .offset(x:50)
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.purple)
                .rotationEffect(Angle(degrees : 15)) // to rotate rectangle
                .offset(x: -50)
                
        
            VStack {
                Text("Welcome to your Personalized")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.system(size : 25))
                    .foregroundColor(Color.white)
                Text ("Virtual Recipe Planner!")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.system(size : 25))
                    .foregroundColor(Color.white)
                Text("Now Cooking is Easier Than Ever!")
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .padding()
               
                    
                
            }
            .padding(.top, 30)
            
        }

        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        /*.offset(y: -100)*/ // to move entire frame up    }
    }
    
}

#Preview {
    HeaderView()
}
