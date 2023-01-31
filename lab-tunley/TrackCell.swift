//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Claudio Micieli on 1/28/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        titleLabel.text = track.movieTitle
        descriptionLabel.text = track.movieDes

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.posterUrl100, into: posterImageView)
    }

    //step 5
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

}
