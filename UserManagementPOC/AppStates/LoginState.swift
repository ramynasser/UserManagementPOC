//
//  LoginState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation

class LoginState: CoreState {
    var userDefault = UserDefaults.standard
    override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == ReadyState.self || super.isValidNextState(stateClass)
    }
    
    override func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        super.didEnterWithPreviousState(previous)
        
        // here handle logic when enter this state
        let loginController = LoginViewController()
        loginController.actionDelegate = self
        appDelegate.setRoot(controller: loginController)
    }
}
extension LoginState: LoginActionProtocol {
    func didLoginSuccess() {
        UserDefaults.standard.isLogged = true
        UserDefaults.standard.isLoggedOut = false
        UserDefaults.standard.synchronize()
        stateManager?.moveTo(ReadyState.self)
    }
}
