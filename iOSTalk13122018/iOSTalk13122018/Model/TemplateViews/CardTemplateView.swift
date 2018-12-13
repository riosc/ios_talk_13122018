//
//  CardTemplateView.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import Foundation
import UIKit


class CardTemplateView: BaseTemplateView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func updateUI() {
        super.updateUI()
        if let card = self.data as? CardTemplate {
            self.titleLabel.text = card.title
            self.subtitleLabel.text = card.subtitle
        }
        
    }    

}
