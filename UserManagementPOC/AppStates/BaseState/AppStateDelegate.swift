//
//  AppStateDelegate.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
/// Application state delegate.
public protocol AppStateDelegate: AnyObject {
    /**
    Reference to state machine
    */
    var stateManager: StateManager? { get }

    /**
    State name
    */
    var name: String { get }

    /**
    Date when state was entered
    */
    var start: Date? { get  set }

    /**
    Is valid next state?
    - Parameter stateClass: validate state
    - Returns: true if valid, false otherwise
    */
    func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool

    /**
    Called by state when entering
    - Parameter previous: state which is being exited
    */
    func didEnterWithPreviousState(_ previous: AppStateDelegate?)

    /**
    Called by state when exiting
    - Parameter next: state which state machine will enter
    */
    func willExitWithNextState(_ next: AppStateDelegate)
}
