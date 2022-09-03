//
//  PlayerView.swift
//  Meditate
//
//  Created by Tanmay Nema on 03/09/22.
//

import SwiftUI

struct PlayerView: View {
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            // MARK: background img
            Image("image-scene")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width) // to make it use the entire width of the screen
                .ignoresSafeArea()
            
                // MARK: blur view
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.30)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                // MARK: dismiss button
                HStack {
                    Button {
                        dismiss()
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }

                    Spacer() // To push it to the right                }
                }
                // MARK: title
                Text("One Minute Relaxing Music")
                    .font(.title)
                    .foregroundColor(.white)
                    
                Spacer() // To push it to the top
                
                // MARK: playback
                
                VStack(spacing: 5) {
                    // MARK: playback timeline
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    // MARK: playback time
                    HStack {
                        Text("0.0")
                        Spacer()
                        Text("1.0")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
                
                // MARK: playback control
                HStack() {
                    // Mark: repeat button
                    PlaybackControlButton(systemName: "repeat") {
                        
                    }
                    
                    Spacer()
                    
                    // Mark: backward button
                    PlaybackControlButton(systemName: "gobackward.10") {
                        
                    }
                    
                    Spacer()
                    
                    // Mark: play/pause button
                    PlaybackControlButton(systemName: "play.circle.fill", fontSize: 45) {
                        
                    }
                    
                    Spacer()
                    
                    // Mark: forward button
                    PlaybackControlButton(systemName: "goforward.10") {
                        
                    }
                    
                    Spacer()
                    
                    // Mark: stop button
                    PlaybackControlButton(systemName: "stop.fill") {
                        
                    }
                }
            }
            .padding(20)
        }

    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

