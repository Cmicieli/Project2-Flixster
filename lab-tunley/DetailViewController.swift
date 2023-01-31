//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var voteAvgLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!

    // TODO: Pt 1 - Add a track property
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Configure the UI elements with the passed in track
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: track.backDropUrl100, into: backdropImageView)

            // Set labels with the associated track values.
            titleLabel.text = track.movieTitle
            descriptionLabel.text = track.movieDes
            voteAvgLabel.text = track.voteAvg
            voteCountLabel.text = track.voteCount
            popularityLabel.text = track.populatiry
    }



}
