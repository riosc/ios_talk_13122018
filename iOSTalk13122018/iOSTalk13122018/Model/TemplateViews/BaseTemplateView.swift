//
//  BaseTemplateView.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import UIKit

protocol TemplateView where Self: UIView {
    
    var data: Template? { get set }
    func updateUI()
    static func view(withData:Template) -> TemplateView
    
}

class BaseTemplateView: UIView, TemplateView {

    var data: Template?
    func updateUI() {}
    
    static func view(withData:Template) -> TemplateView {
        
        let name = NSStringFromClass(self).components(separatedBy: ".").last!
        let view = Bundle(for: self).loadNibNamed(name, owner: self, options: nil)?.last as! BaseTemplateView
        view.data = withData
        view.updateUI()
        return view
    }}
