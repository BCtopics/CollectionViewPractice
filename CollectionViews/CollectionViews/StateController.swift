//
//  StateController.swift
//  CollectionViews
//
//  Created by Bradley GIlmore on 5/10/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class StateController {
    
    var states: [State] = []
    
    init() {
        self.states = createAllStates()
    }
    
    func createAllStates() -> [State]{
        var placeholderStates: [State] = []

        for (index , stateFullName) in StateHelper.fullNames.enumerated() {
//            guard let Index = StateHelper.fullNames.index(of: stateFullName) else { return [] }
            //^^ This would be the old way that I did it. I just had stateFullName in for loop and didn't have .enumerated() at the end of StateHelper.fullnames.enumerated().
            
            let abbreviation = StateHelper.abbreviations[index]
            let state = State(name: stateFullName, abbreviation: abbreviation)
            
            placeholderStates.append(state)
        }

        return placeholderStates
    }
    
}
