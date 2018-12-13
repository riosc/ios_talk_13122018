//
//  NavegationActionHandler.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation

class NavigationActionHandler: BaseActionHandler{
    
    override func run() {
        
        guard let navData = self.data as? NavigationAction else { return }
        
        switch navData.flow {
        case .pop:
            self.presenter.navigator.pop()
        case .popRoot:
            self.presenter.navigator.popToRoot()
        case .push:
            self.presenter.navigator.pushView(route: navData.route)
        }
    }
}
