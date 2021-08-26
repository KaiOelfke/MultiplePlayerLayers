//
//  ViewController.swift
//  MultiplePlayerLayers
//
//  Created by Thomas Heß on 13.8.21.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet private var playerView: PlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // as soon as the second VC becomes visible and the player view is attached the issue occurs
        VideoController.shared.attachPlayerView(playerView)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // detaching here solves the issue
//        VideoController.shared.detachPlayerView(playerView)
    }
}

