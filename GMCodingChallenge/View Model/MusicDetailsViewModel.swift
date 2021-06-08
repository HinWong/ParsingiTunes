//
//  MusicDetailsViewModel.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/7/21.
//

import Foundation

class MusicDetailsVM {
    let musicInformation: Music?
    
    init(musicDetails: Music) {
        self.musicInformation = musicDetails
    }
    
    func getArtistName() -> String {
        musicInformation?.artistName ?? "N/A"
    }
    
    func getTrackName() -> String {
        musicInformation?.trackName ?? "N/A"
    }
    
    func getTrackPrice() -> Float {
        Float(musicInformation?.trackPrice ?? 0.00)
    }
    
    func getReleaseDate() -> String {
        let date = inputDateFormatter.date(from: musicInformation?.releaseDate ?? "N/A")
        if let date = date {
            return outputDateFormatter.string(from: date)
        } else {
            return "N/A"
        }
    }
    
    func getPrimaryGenreName() -> String {
        musicInformation?.primaryGenreName ?? "N/A"
    }
    
    func getImageUrl() -> String? {
        musicInformation?.artworkUrl
    }
}
