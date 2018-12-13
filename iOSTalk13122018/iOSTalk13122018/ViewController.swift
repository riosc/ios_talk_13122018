//
//  ViewController.swift
//  iOSTalk13122018
//
//  Created by Carlos David Rios Vertel on 12/10/18.
//  Copyright © 2018 Carlos David Rios Vertel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushGeneric() {
        let view = GenericSceneBuilder.build(fileName: "views")
        self.navigationController?.pushViewController(view, animated: true);
    }
    

}

