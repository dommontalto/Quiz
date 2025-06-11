//
//  QuizAppView.swift
//  Quiz
//
//  Created by Dominic Montalto on 11/06/2025.
//

import SwiftUI

struct QuizAppView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("What is the main function of a view model in the MVVM architecture?")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text("Select an answer below")
                .foregroundStyle(.gray)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 120)
        .padding()
        
        VStack(alignment: .leading) {
            Text("Question 1 / 6")
                .font(.subheadline)
                .padding(.horizontal)
            
            Divider()
        }
        .padding(.bottom)
        
        VStack(spacing: 12) {
            ForEach(0 ..< 4, id: \.self) { choice in
                Button {
                    
                } label: {
                    Text("Some test answer")
                        .padding(.horizontal)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.black)
                        .frame(width: 360, height: 52, alignment: .leading)
                        .clipShape(.rect(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1.0)
                        }
                }
            }
        }
        
        Spacer()
        
        Button {
            
        } label: {
            Text("Submit")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 360, height: 52)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview() {
    QuizAppView()
}
