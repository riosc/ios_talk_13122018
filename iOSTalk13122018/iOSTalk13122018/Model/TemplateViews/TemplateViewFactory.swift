//
//  TemplateViewFactory.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation

class TemplateViewFactory {

    static func viewFor(data: Template) -> TemplateView? {
        
        let dic: [String: TemplateView.Type] = ["card": CardTemplateView.self]
     
        if let type = dic[data.id]{
            return type.view(withData:data)
        }
        
        return nil
    }
    
}

