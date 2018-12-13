//
//  BaseAction.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol Action: JSONBuildeable {
    var id: String { get set }
    var type: String { get set }
    var label: String { get set }

}

class BaseAction: Action {
    var id: String
    var type: String
    var label: String

    required init(json: JSON) {
        self.id = json["id"].stringValue
        self.label = json["label"].stringValue
        self.type = json["type"].stringValue

    }
}
