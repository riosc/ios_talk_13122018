//
//  BaseTemplateView.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON


protocol RootTemplate {
    var templates: [Template] { get set }
}

protocol Template: JSONBuildeable {
    var id: String { get set }
    var actions: [Action] { get set }
}

class BaseTemplate: Template {
    var id: String
    var actions: [Action]

    
    required init(json: JSON) {
        self.id = json["id"].stringValue
        self.actions = json["actions"].arrayValue.compactMap { ActionFactory.actionFor(json: $0) }
    }
}


class BaseRootTemplate: RootTemplate, JSONBuildeable {

    var templates: [Template]

    required init(json: JSON) {
        self.templates = json["views"].arrayValue.compactMap { TemplateFactory.templateFor(json: $0) }
    }

}

