//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//

import UIKit

class TracksViewController: UIViewController, UITableViewDataSource {
    
    // TODO: Pt 1 - Add a tracks property
    var tracks: [Track] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Set tracks property with mock tracks array
        tracks = Track.mockTracks
        print(tracks)
        
        tableView.dataSource = self
        
    }//end viewDidLoad
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }//end tableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as! TrackCell

        let track = tracks[indexPath.row]

        cell.configure(with: track)

        return cell
    }//end tableView

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {
            
            // Use the index path to get the associated track
            let track = tracks[indexPath.row]
            
            // Set the track on the detail view controller
            detailViewController.track = track
        }
    }//end prepare

    // TODO: Pt 1 - Add table view data source methods
    
    // TODO: Pt 1 - Add table view outlet
    @IBOutlet weak var tableView: UITableView!
}//end
