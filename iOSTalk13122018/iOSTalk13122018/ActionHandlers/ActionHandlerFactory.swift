//
//  ActionHandlerFactory.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation

final class ActionHandlerFactory {
    
    static func handlerFor(data: Action, presenter: GenericScreenPresentation) -> ActionHandler? {
        
        let dic: [String: ActionHandler.Type] = ["navigation": NavigationActionHandler.self]
        
        if let type = dic[data.type]{
            return type.init(data: data, presenter: presenter)
        }
        
        return nil
    }
}
