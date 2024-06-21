//
//  SlidingTutorialView.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/9/24.
//

import SwiftUI

struct SlidingTutorialView: View {
    
    @State private var currentSelection = 0
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("SKIP")
                        .padding(.trailing, 15)
                        .foregroundColor(.gray.opacity(0.8))
                        .font(.system(size: 20, weight: .bold))
                }
            }
            TabView(selection: $currentSelection) {
                ForEach(0..<tutorialPageInfos.count) { index in
                    TutorialPageView(pageInfo: tutorialPageInfos[index])
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.bouncy, value: currentSelection)
            
            DottedTutorialProgressIndicator(currentIndex: currentSelection)
                .animation(.bouncy(duration: 0.25), value: currentSelection)
                .padding(.bottom, 20)
            
            Button(action: {
                if currentSelection < tutorialPageInfos.count - 1 {
                    currentSelection += 1
                } else {
                    // Go to first page
                    presentationMode.wrappedValue.dismiss()
                }
            }) {
                Text(currentSelection < tutorialPageInfos.count - 1 ? "Next" : "Star Your Journey")
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))
            }
            .buttonStyle(.plain)
            .cornerRadius(10)
            
        }// eof VStack
        
    } // eof body
}

#Preview {
    SlidingTutorialView()
}
