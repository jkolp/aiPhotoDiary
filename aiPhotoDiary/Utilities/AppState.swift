//
//  AppState.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/9/24.
//

import Foundation

class AppState: ObservableObject {
    @Published var isFirstLaunch: Bool
    
    static let shared = AppState()
    
    private init() {
        let defaults = UserDefaults.standard
        if defaults.bool(forKey: "isFirstLaunch") == false {
            defaults.set(true, forKey: "isFirstLaunch")
            isFirstLaunch = true
        } else {
            isFirstLaunch = false
        }
    }
}
