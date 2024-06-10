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
    
    var body: some Scene {
        WindowGroup {
            if appState.isFirstLaunch {
                SlidingTutorialView()
            } else {
                DiaryListView()
            }
        }
    }
}
