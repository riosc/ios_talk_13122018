//
//  GenericSceneBuilder.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import SwiftyJSON

class GenericSceneBuilder {
    
    static func build () -> GenericScreenViewController {
        
        let name = NSStringFromClass(GenericScreenViewController.self).components(separatedBy: ".").last!
        let view = GenericScreenViewController(nibName: name, bundle: Bundle(for: self))
        let presenter = GenericScreenPresenter(view: view)
        view.presenter = presenter
        
        
        
        if let path = Bundle.main.path(forResource: "views", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let model = BaseRootTemplate(json: JSON(data))
                presenter.model = model

            } catch {
                // handle error
            }
        }
        
        return view
    }
}
