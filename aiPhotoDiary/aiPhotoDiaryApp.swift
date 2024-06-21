//
//  aiPhotoDiaryApp.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/9/24.
//

import SwiftUI

@main
struct aiPhotoDiaryApp: App {
    
    @StateObject private var appState = AppState.shared
    @State private var showTutorial : Bool
    
    init() {
        var initialShowTutorial: Bool = false
        initialShowTutorial = AppState.shared.isFirstLaunch
        
        _showTutorial = State(initialValue: initialShowTutorial)
    }
    
    var body: some Scene {
        WindowGroup {
            DiaryListView()
                .environmentObject(appState)
                .fullScreenCover(isPresented: $showTutorial) {
                    // Show tutorial if first time launch. 
                    SlidingTutorialView()
                }
        }
    }
}
