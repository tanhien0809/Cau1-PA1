//
//  ViewController.swift
//  Cau1-PA1
//
//  Created by Cntt10 on 7/5/17.
//  Copyright © 2017 theswiftproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        concurenQueues()
    }
    var inactiveQueue:DispatchQueue!
    func concurenQueues()
    {
        let Queue = DispatchQueue(label: "Queue", qos: .utility, attributes: .concurrent)
        inactiveQueue = Queue
        Queue.async {
            for i in 0..<10 {
                print("🔴",i)
            }
        }
        Queue.async {
            for i in 100..<110 {
                print("🔵",i)
            }
        }
        Queue.async {
            for i in 1000..<1010 {
                print("⚫️",i)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

