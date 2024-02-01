//
//  VideoPlayerView.swift
//  esham
//
//  Created by aisha rashid alshammari  on 20/07/1445 AH.
//
import SwiftUI
import AVKit
struct VideoPlayerView: View {
    let videoURL: URL

    var body: some View {
        VideoPlayer(player: AVPlayer(url: videoURL))
            .edgesIgnoringSafeArea(.all)
    }
}
