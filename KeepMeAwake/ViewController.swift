//
//  ViewController.swift
//  KeepMeAwake
//
//  Created by Igor Kantor on 7/1/15.
//  Copyright (c) 2015 Igorware. All rights reserved.
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

    @IBAction func keepMeAwakeTapped(sender: AnyObject) {
        UIApplication.sharedApplication().idleTimerDisabled = true
    }

    @IBAction func letMeSleepTapped(sender: AnyObject) {
        UIApplication.sharedApplication().idleTimerDisabled = false
    }

    @IBAction func stayUpFor15Min(sender: AnyObject) {
        UIApplication.sharedApplication().idleTimerDisabled = true

        // went to sleep after 17 minutes?
        // get the default idle timer and substract from 15
        var timer = NSTimer.scheduledTimerWithTimeInterval(900.0, // seconds
            target: self, selector: "sleepNow", userInfo: nil, repeats: false)
    }


    func sleepNow(){
        // can we force sleep?
        UIApplication.sharedApplication().idleTimerDisabled = false
    }
}

