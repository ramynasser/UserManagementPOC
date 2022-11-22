//
//  OnBoardingState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
class OnBoardingState: CoreState {
    
    override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == LoginState.self || super.isValidNextState(stateClass)
    }

    override func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        super.didEnterWithPreviousState(previous)
        
        // here handle logic when enter this state
        let onboardingController = OnboardingViewController()
        onboardingController.actionDelegate = self
        appDelegate.setRoot(controller: onboardingController)
    }
}
extension OnBoardingState: OnboardingActionProtocol {
    func didCompleteOnboarding() {
        stateManager?.moveTo(LoginState.self)
    }
}
