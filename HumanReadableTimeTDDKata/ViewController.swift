//
//  ViewController.swift
//  HumanReadableTimeTDDKata
//
//  Created by 張 景隆 on 2018/6/9.
//  Copyright © 2018年 張 景隆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func humanReadableTime(input:Int) -> String {
        return "\(String(format: "%02d", (input - 60) % 60)):\(String(format: "%02d", input % 60))"
    }

}

