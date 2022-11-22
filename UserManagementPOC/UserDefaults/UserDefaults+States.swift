//
//  UserDefaults+States.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
extension UserDefaults {
    public var isLogged: Bool {
        get {
            return bool(forKey: "isLogged")
        }
        set {
            set(newValue, forKey: "isLogged")
        }
    }
    
    public var isLoggedOut: Bool {
        get {
            return bool(forKey: "isLoggedOut")
        }
        set {
            set(newValue, forKey: "isLoggedOut")
        }
    }
    
    public var isOnboarding: Bool {
        get {
            return bool(forKey: "isOnboarding")
        }
        set {
            set(newValue, forKey: "isOnboarding")
        }
    }
}
