//
//  GMCodingChallengeTests.swift
//  GMCodingChallengeTests
//
//  Created by Hin Wong on 6/7/21.
//

import XCTest
@testable import GMCodingChallenge

class GMCodingChallengeTests: XCTestCase {
    
    var sut = MusicDetailsVM(musicDetails: Music(
                                artistName: "Rihana",
                                trackName: "Work (feat. Drake)",
                                releaseDate: "2016-01-27T12:00:00Z",
                                trackPrice: 1.29,
                                primaryGenreName: "Pop",
                                artworkUrl: nil))
    
    func test_viewModelHasArtistName() {
        let expected = "Rihana"
        
        let result = sut.getArtistName()
        
        XCTAssertEqual(result, expected, "Artist name: \(result) should be \(expected)")
    }
    
    func test_viewModelHasTrackName() {
        let expected = "Work (feat. Drake)"
        
        let result = sut.getTrackName()
        
        XCTAssertEqual(result, expected, "Track name from viewModel \(result) should be \(expected)")
    }

    func test_viewModelHasPrice() {
        let expected: Float = 1.29
        
        let result = sut.getTrackPrice()
        
        XCTAssertEqual(result, expected, "Track price from viewModel \(result) should be \(expected)")
    }
    
    func test_viewModelDateInMMDDYYY() {
        
        let dateString = sut.getReleaseDate()
        
        let outputDate = outputDateFormatter.date(from: dateString)
        
        XCTAssertNotNil(outputDate, "Date string from View Model can be converted to MM-DD-YYYY format")
    }
    
    func test_viewModelDateShouldNotBeYYYYMMDD() {
        
        let dateString = sut.getReleaseDate()
        
        let yearMMDDFormatter = DateFormatter()
        yearMMDDFormatter.dateFormat = "YYYY-MM-dd"
        let outputDate = yearMMDDFormatter.date(from: dateString)
        
        XCTAssertNil(outputDate, "Date string from View Model should not be convertable to YYYY-MM-dd format")
    }
    
    func test_viewModelHasGenre() {
        let expected = "Pop"
        
        let result = sut.getPrimaryGenreName()
        
        XCTAssertEqual(result, expected, "Primary Genre from viewModel \(result) should be \(expected)")
    }
    
    func test_ArtworkUrlCanBeNil() {
        let result = sut.getImageUrl()
        
        XCTAssertNil(result, "Some Tracks from iTunes can have a nil artwork")
    }
    
    
}
