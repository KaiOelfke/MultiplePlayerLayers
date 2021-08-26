//
//  PlayerView.swift
//  PlayerView
//
//  Created by Thomas Heß on 13.8.21.
//

import AVFoundation
import UIKit

final class PlayerView: UIView {

    override static var layerClass: AnyClass {
        AVPlayerLayer.self
    }

    var player: AVPlayer? {
        get {
            playerLayer?.player
        }
        set {
            playerLayer?.player = newValue
        }
    }

    var playerLayer: AVPlayerLayer? {
        layer as? AVPlayerLayer
    }

    var aspectFill: Bool {
        get {
            playerLayer?.videoGravity == .resizeAspectFill
        }
        set {
            playerLayer?.videoGravity = newValue ? .resizeAspectFill : .resizeAspect
        }
    }
}
