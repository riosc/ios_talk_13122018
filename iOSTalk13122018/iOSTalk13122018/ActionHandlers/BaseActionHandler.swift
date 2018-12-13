//
//  BaseActionHandler.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation

protocol ActionHandler {
    var data: Action { get set }
    var presenter : GenericScreenPresentation! { get set }
    func run()
    
    init(data: Action, presenter: GenericScreenPresentation)
}

class BaseActionHandler: ActionHandler {
    var data: Action
    weak var presenter: GenericScreenPresentation!

    required init(data: Action, presenter: GenericScreenPresentation) {
        self.data = data
        self.presenter = presenter
    }
    
    func run() {        
    }
    
}
