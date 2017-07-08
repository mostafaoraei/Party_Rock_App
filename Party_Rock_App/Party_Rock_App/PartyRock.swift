//
//  PartyRock.swift
//  Party_Rock_App
//
//  Created by Mostafa Oraei on 4/17/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import Foundation



class PartyRock {

    private var _imageURL : String!
    private var _videoTitle : String!
    private var _videoURL : String!
    
    var imageURL : String {
        
        return _imageURL
    }
    
    var videoURL : String {
        
        return _videoURL
    }
    
    var videoTitle : String {
        
        return _videoTitle
    }
    
    init(imageURL : String, videoURL : String, videoTitle : String) {
        
        _imageURL = imageURL
        _videoTitle = videoTitle
        _videoURL = videoURL
    }
}
