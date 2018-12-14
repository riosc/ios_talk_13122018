//
//  GenericScreenViewController.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/13/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import UIKit


protocol GenericScreenView: class {
    func add(views:[TemplateView])
}

class GenericScreenViewController: UIViewController, GenericScreenView {

    var presenter: GenericScreenPresentation!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.inflate()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add(views:[TemplateView]) {
        for view in views {
            stackView.addArrangedSubview(view as! UIView)
            view.accept(self.presenter.actionHandlerBuilder)
        }
    }

}
