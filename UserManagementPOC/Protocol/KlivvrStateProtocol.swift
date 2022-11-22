//
//  KlivvrStateProtocol.swift
//  UserManagementPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
import Foundation
/// State protocol.
public protocol KlivvrStateProtocol: AnyObject {
    /// State manager.
    var stateManager: StateManager { get }
    /// List of application's flow states.
    var appFlowStates: [AppStateDelegate] { get }
}
