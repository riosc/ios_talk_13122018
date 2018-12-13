//
//  GenericScreenPresenter.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation


protocol GenericScreenPresentation {
    func inflate()
}

class GenericScreenPresenter : GenericScreenPresentation {

    weak var view: GenericScreenView!
    var model: RootTemplate?
    
    init(view: GenericScreenView) {
        self.view = view
    }
    
    func inflate() {
        
        guard let root = model else { return }
        let array = root.templates.compactMap { TemplateViewFactory.viewFor(data: $0)}
        self.view.add(views: array)        
        
    }
}
