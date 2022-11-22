//
//  SplashState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
class SplashState: CoreState {
    var userDefault = UserDefaults.standard
    
    var nextStateType: AppStateDelegate.Type {
        if userDefault.isLoggedOut {
            return LogOutState.self
        } else if userDefault.isLogged {
            return ReadyState.self
        } else {
            return OnBoardingState.self
        }
//        if userDefault.isLogged {
//            return ReadyState.self
//        }
//        return OnBoardingState.self
    }

    
    override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == nextStateType || super.isValidNextState(stateClass)
    }
    
    
    override func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        super.didEnterWithPreviousState(previous)
       
        // here handle logic when enter this state
        let splashController = SplashViewController()
        splashController.actionDelegate = self
        appDelegate.setRoot(controller: splashController)
    }
}
extension SplashState: SplashActionProtocol {
    func didCompleteSplashAnimation() {
        stateManager?.moveTo(nextStateType)
    }
}
