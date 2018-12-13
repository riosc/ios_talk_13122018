//
//  CardTemplate.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON

class CardTemplate: BaseTemplate {
    
    var title: String
    var subtitle: String

    required init(json: JSON) {
        self.title = json["title"].stringValue
        self.subtitle = json["subtitle"].stringValue
        super.init(json: json)
    }
    
}
