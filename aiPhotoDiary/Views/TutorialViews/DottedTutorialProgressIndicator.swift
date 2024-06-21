//
//  DottedTutorialProgressIndicator.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/19/24.
//

import SwiftUI

struct DottedTutorialProgressIndicator: View {
    
    var currentIndex : Int

    var body: some View {
        HStack {
            ForEach(0..<tutorialPageInfos.count) { index in
                if index == currentIndex {
                    Rectangle()
                        .frame(width: 20, height: 10)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                } else {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray)
                }
            }
        }
        
        
    }
}

#Preview {
    DottedTutorialProgressIndicator(currentIndex: 1)
}
