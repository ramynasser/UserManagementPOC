//
//  CoreState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
/// Core state.
open class CoreState: AppStateDelegate {
    open var start: Date?

    open var stateManager: StateManager? {
        return KlivvrStateInitializer.shared.stateManager
    }

    open var name: String {
        return String(describing: self)
    }

    open func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == BackgroundState.self
    }

    open func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        start = Date()
    }

    open func willExitWithNextState(_ next: AppStateDelegate) {
    }

    public init() {
    }
}
