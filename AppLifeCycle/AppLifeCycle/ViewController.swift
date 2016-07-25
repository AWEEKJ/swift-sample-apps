//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by AWEEK.JO on 2016. 7. 25..
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func loadView() {
//        print("loadView")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDisappear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

