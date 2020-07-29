//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by mohamed  habib on 29/07/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit
import RxSwift


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Observable.from([1,2,3,4,5])
    }


}

