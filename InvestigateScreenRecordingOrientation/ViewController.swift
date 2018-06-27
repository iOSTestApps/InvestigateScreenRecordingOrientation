//
//  ViewController.swift
//  InvestigateScreenRecordingOrientation
//
//  Created by Romain Pouclet on 2018-06-27.
//  Copyright © 2018 Buddybuild. All rights reserved.
//

import UIKit
import BuddyBuildSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            switch UIDevice.current.orientation {
            case .faceDown: NSLog("Device is face down")
            case .faceUp: NSLog("Device is face up")
            case .landscapeLeft: NSLog("Device is landscape left")
            case .landscapeRight: NSLog("Device is landscape right")
            case .portrait: NSLog("Device is portrait")
            case .portraitUpsideDown: NSLog("Device is portrait upside down")
            case .unknown: NSLog("Device is unknown")
            }
        }
    }

    @IBAction func boom(_ sender: Any) {
        BuddyBuildSDK.crash()
    }

}

