//
//  UserDefaultsManager.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/20/24.
//

import Foundation

enum UserDefaultsKeys: String {
    case isFirstLaunched
}

class UserDefaultsManager {
    
    static let shared = UserDefaultsManager()
    
    private init() {
        registerDefaults()
    }
    
    /// Set default value for isFirstLaunched : True
    private func registerDefaults() {
        let defaults: [String: Any] = [
            UserDefaultsKeys.isFirstLaunched.rawValue : true
        ]
        UserDefaults.standard.register(defaults: defaults)
    }
    
    var isFirstLaunched : Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.isFirstLaunched.rawValue)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.isFirstLaunched.rawValue)
        }
    }
    
}
