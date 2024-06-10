//
//  aiPhotoDiaryApp.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/9/24.
//

import SwiftUI

let isFirstLaunchKey = "isFirstLaunch"

func isFirstLaunch() -> Bool {
    let defaults = UserDefaults.standard
    if defaults.bool(forKey: isFirstLaunchKey) == false {
        defaults.set(true, forKey: isFirstLaunchKey)
        return true
    }
    return false
}

@main
struct aiPhotoDiaryApp: App {
    var body: some Scene {
        WindowGroup {
            if isFirstLaunch() {
                SlidingTutorialView()
            } else {
                DiaryListView()
            }
        }
    }
}
