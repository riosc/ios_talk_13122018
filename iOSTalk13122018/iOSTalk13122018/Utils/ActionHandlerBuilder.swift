//
//  ActionHandlerBuilder.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation

final class ActionHandlerBuilder {
    
    weak var presenter: GenericScreenPresentation!
    
    init(presenter: GenericScreenPresentation) {
        self.presenter = presenter
    }
    
    func injectAction(inView: TemplateView) {
        
        guard let action = inView.data?.action else { return }        
        inView.handler = ActionHandlerFactory.handlerFor(data: action, presenter: self.presenter)
    }
}
