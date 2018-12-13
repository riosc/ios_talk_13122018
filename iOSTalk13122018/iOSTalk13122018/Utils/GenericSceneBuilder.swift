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
        
        
        let string = "{\"views\":[{\"id\":\"card\",\"title\":\"title\",\"subtitle\":\"was a South African anti-apartheid revolutionary, political leader, and philanthropist who served as President of South Africa from 1994 to 1999. He was the country's first black head of state and the first elected in a fully representative democratic election. His government\"}]}"
        let model = BaseRootTemplate(json: JSON(parseJSON: string))
        
        presenter.model = model
        
        return view
    }
}
