//
//  ViewController.swift
//  VoiceOverTest
//
//  Created by Johns, Robert on 8/8/17.
//  Copyright © 2017 Visa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.accessibilityLabel = "You can tap this really long string that i'm testing"
        label.accessibilityLabel = "This is a label"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        label.isHidden = !label.isHidden
        if !label.isHidden {
            UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, label)
        }
    }
}
