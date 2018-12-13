//
//  NavegationAction.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON

class NavegationAction: BaseAction {
    
    var type: String
    var view: RootTemplate
    
    required init(json: JSON) {
        self.type = json["type"].stringValue
        self.view = BaseRootTemplate(json: json["view"])
        super.init(json: json)
    }
    
}
