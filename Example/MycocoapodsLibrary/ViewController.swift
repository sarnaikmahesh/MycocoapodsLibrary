//
//  ViewController.swift
//  MycocoapodsLibrary
//
//  Created by sarnaikmahesh on 03/09/2021.
//  Copyright (c) 2021 sarnaikmahesh. All rights reserved.
//

import UIKit
import MycocoapodsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let log = LOgger()
        log.printLog()
        
        let frameworkBundle = Bundle(for: LOgger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image  = UIImage(named: "flower.jpg", in: resourcesBundle, compatibleWith: nil)
        print(image as Any)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

