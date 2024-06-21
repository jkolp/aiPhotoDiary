//
//  aiPhotoDiaryApp.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/9/24.
//

import SwiftUI

@main
struct aiPhotoDiaryApp: App {
    
    @State private var showTutorial : Bool
    
    /// Initialize the @State variable showTutorial to only present SlidingTutorialView on the inital launch after installing.
    init() {
        _showTutorial = State(initialValue: UserDefaultsManager.shared.isFirstLaunched)
    }
    
    var body: some Scene {
        WindowGroup {
            DiaryListView()
                .fullScreenCover(isPresented: $showTutorial) {
                    /// Only show tutorial on launching for the first time.
                    SlidingTutorialView()
                }
        }
    }

}



