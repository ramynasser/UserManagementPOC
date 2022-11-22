//
//  LogOutState.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
class LogOutState: CoreState {
    
    override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == LoginState.self || super.isValidNextState(stateClass)
    }
    
    override func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        super.didEnterWithPreviousState(previous)
        
        // here handle logic when enter this state
        let vc = ContinueAsViewController()
        vc.actionDelegate = self
        appDelegate.setRoot(controller: vc)
    }
}
extension LogOutState: ContinueAsActionProtocol {
    func didLogin() {
        stateManager?.moveTo(LoginState.self)
    }
}
