//
//  BackgroundState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation

/// Background state.
public class BackgroundState: CoreState {
    public override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return true
    }
}
