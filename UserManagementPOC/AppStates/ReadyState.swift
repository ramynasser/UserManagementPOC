//
//  ReadyState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
class ReadyState: CoreState {
    override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == LogOutState.self || super.isValidNextState(stateClass)
    }
    
    override func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        super.didEnterWithPreviousState(previous)
        
        // here handle logic when enter this state
        let vc = HomeViewController()
        vc.actionDelegate = self
        appDelegate.setRoot(controller: vc)
    }
}
extension ReadyState: LogoutActionProtocol {
    func didLogout() {
        UserDefaults.standard.isLoggedOut = true
        UserDefaults.standard.isLogged = false
        UserDefaults.standard.synchronize()
        stateManager?.moveTo(LogOutState.self)
    }
}
