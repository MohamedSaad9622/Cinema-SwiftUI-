//
//  VideoPlayer.swift
//  Cinema
//
//  Created by Mohamed Saad on 07/07/2024.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(file: String, fileFormat: String) -> AVPlayer? {
    if let url = Bundle.main.url(forResource: file, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: url)
        videoPlayer?.play()
    }
    return videoPlayer
}
