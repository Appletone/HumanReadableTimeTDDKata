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
        return input.toHumanReadableTime()
    }

}

extension Int {
    
    func toHumanReadableTime(reabableTime:String = "") -> String {
        let timeUnits = [60, 60, 999] // sec, min, hour
        let subSqrt   = reabableTime.filter { $0 == ":" }.count
        
        let dividend = self
        let divisor  = timeUnits[subSqrt]
        let newQuotient = dividend / divisor
        let remainder = dividend % divisor
        let newReabableTime = String(format: "%02d", remainder) + ":" +  reabableTime
        
        if 0 == newQuotient {
            return String(newReabableTime.dropLast())
        }
        else {
            return newQuotient.toHumanReadableTime(reabableTime: newReabableTime )
        }
    }
}

