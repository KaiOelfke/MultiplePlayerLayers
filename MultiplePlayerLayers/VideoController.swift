//
//  VideoController.swift
//  VideoController
//
//  Created by Thomas Heß on 13.8.21.
//

import AVFoundation

final class VideoController {

    static let shared = VideoController()
    
    private lazy var player = AVPlayer(url: URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8")!)

    func attachPlayerView(_ playerView: PlayerView) {
        playerView.player = player
    }

    func detachPlayerView(_ playerView: PlayerView) {
        playerView.player = nil
    }

    func play() {
        player.play()
    }
}
