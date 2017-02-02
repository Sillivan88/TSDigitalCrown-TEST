//
//  LogInterfaceController.swift
//  Digitaion Crown [TEST]
//
//  Created by Thomas Sillmann on 31.01.17.
//  Copyright © 2017 Thomas Sillmann. All rights reserved.
//

import WatchKit

class LogInterfaceController: WKInterfaceController, WKCrownDelegate {
    
    // MARK: - Properties
    
    @IBOutlet var label: WKInterfaceLabel!
    
    // MARK: - Crown delegate
    
    override func willActivate() {
        super.willActivate()
        crownSequencer.delegate = self
        crownSequencer.focus()
    }
    
    // MARK: - Crown delegate
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        label.setText("Crown did rotate with rotational delta: \(rotationalDelta)")
    }
    
    func crownDidBecomeIdle(_ crownSequencer: WKCrownSequencer?) {
        label.setText("Crown did become idle")
    }
    
}
