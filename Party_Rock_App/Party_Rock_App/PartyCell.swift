//
//  PartyCell.swift
//  Party_Rock_App
//
//  Created by Mostafa Oraei on 4/17/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUi(partyRock : PartyRock) {
        
        videoTitle.text = partyRock.videoTitle
        
        //this motherfucker waste 4 hours of my time
        let url = URL(string : partyRock.imageURL)!
        
        DispatchQueue.global().async {
            
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                    
                }
            } catch {
                
            }
            
        }
        
        
    }


}
