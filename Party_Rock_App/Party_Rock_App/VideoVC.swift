//
//  VideoVC.swift
//  Party_Rock_App
//
//  Created by Mostafa Oraei on 4/17/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView : UIWebView!
    @IBOutlet weak var videoTitle : UILabel!
    
    private var _partyRock : PartyRock!
    
    var partyRock : PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitle.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
       
    }

}
