//
//  AudioPlayer.swift
//  RestartAppSwiftUI
//
//  Created by Bilal on 24.02.2024.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) { //ToMe: this method is not working on sim.
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            print("cannot play the sound")
        }
    }
}
