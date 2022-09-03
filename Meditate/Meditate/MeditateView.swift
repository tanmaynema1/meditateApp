//
//  MeditateView.swift
//  Meditate
//
//  Created by Tanmay Nema on 03/09/22.
//

import SwiftUI

struct MeditateView: View {
    @State private var showPlayer = false
    var body: some View {
        // spacing 0 to make sure no space between the two stacks
        VStack(spacing: 0) {
            // MARK: image content
            Image("image-scene")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
        
            // MARK: meditation content
            ZStack {
                // MARK: the background
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: content of the media
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.8)
                    
                    // MARK: title
                    Text("One Minute Relaxing Music")
                        .font(.title)
                    
                    // MARK: play button
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity) // gives the entire width
                            .background(.white)
                            .cornerRadius(12)
                    }
                    
                    // MARK: description
                    Text("Relaxing piano music and water sounds fir sleep, stress relief, relaxation, meditation, healing, studying, reading, focus, concentration, yoga, spa and mindfulness.")
                    
                    Spacer() // To push everything to the top
                    
                }
                .foregroundColor(.white)
                .padding(20) // To avoid the text stuck to the top
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea() // To remove any blank space
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView()
        }
    }
}

struct MeditateView_Previews: PreviewProvider {
    static var previews: some View {
        MeditateView()
    }
}
