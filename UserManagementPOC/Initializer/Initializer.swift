//
//  Initializer.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
import Foundation
// initialise of applications state
/**
 each state refer to this state is now the root of application 
 */
class KlivvrStateInitializer: KlivvrStateProtocol {
    static var shared = KlivvrStateInitializer()
    var userDefaults: UserDefaults

    // Protocol Variables
    public var stateManager = StateManager(states: nil)
    var appFlowStates: [AppStateDelegate] {
        return [
           InitState(),
           SplashState(),
           OnBoardingState(),
           LoginState(),
           ReadyState(),
           LogOutState(),
           BackgroundState()
        ]
    }

    init(userDefaults: UserDefaults = UserDefaults.standard) {
        self.userDefaults = userDefaults
        initializeStateManager()
    }

    func initializeStateManager() {
        stateManager = StateManager(states: appFlowStates)
    }

}
