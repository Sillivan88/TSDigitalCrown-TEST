//
//  InterfaceController.swift
//  Digitaion Crown [TEST] WatchKit Extension
//
//  Created by Thomas Sillmann on 30.01.17.
//  Copyright © 2017 Thomas Sillmann. All rights reserved.
//

import WatchKit

class ImageInterfaceController: WKInterfaceController, WKCrownDelegate {
    
    // MARK: - Properties
    
    var alpha: CGFloat = 1
    
    @IBOutlet var image: WKInterfaceImage!
    
    // MARK: - Methods
    
    override func willActivate() {
        super.willActivate()
        crownSequencer.delegate = self
        crownSequencer.focus()
    }
    
    // MARK: - Crown delegate
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        if rotationalDelta >= 0 {
            alpha += 0.01
        } else {
            alpha -= 0.01
        }
        image.setAlpha(alpha)
    }
    
}
