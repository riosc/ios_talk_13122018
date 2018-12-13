//
//  TemplateFactory.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON


final class TemplateFactory {
    
    static func templateFor(json: JSON) -> Template? {
        
        let dic: [String: Template.Type] = ["card": CardTemplate.self]
        let typeId = json["id"].stringValue

        if let type = dic[typeId]{
            return type.init(json: json)
        }
        
        return nil
    }
}

