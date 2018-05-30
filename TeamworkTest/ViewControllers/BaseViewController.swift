//
//  BaseViewController.swift
//  TeamworkTest
//
//  Created by Rafael Montilla on 5/29/18.
//  Copyright © 2018 Teamwork. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    public func drawShadow(view: UIView){
        view.layer.shadowColor = UIColor.black.cgColor;
        view.layer.shadowOffset = CGSize.zero;
        view.layer.shadowOpacity = 0.3;
        view.layer.shadowRadius = 5.0;
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
