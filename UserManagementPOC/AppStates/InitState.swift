//
//  InitState.swift
//  NetworkLayerPOC
//
//  Created by Ramy Nasser on 22/11/2022.
//

import Foundation
public class InitState: CoreState {
    public override func isValidNextState(_ stateClass: AppStateDelegate.Type) -> Bool {
        return stateClass == SplashState.self || super.isValidNextState(stateClass)
    }

    public override func didEnterWithPreviousState(_ previous: AppStateDelegate?) {
        super.didEnterWithPreviousState(previous)

        stateManager?.moveTo(SplashState.self)
    }
}
