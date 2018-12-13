//
//  ActionFactory.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON


final class ActionFactory {
    
    static func actionFor(json: JSON) -> Action? {
        
        let dic: [String: Action.Type] = ["card": NavegationAction.self]
        
        let typeId = json["id"].stringValue
        
        if let type = dic[typeId]{
            return type.init(json: json)
        }
        
        return nil
    }
}
