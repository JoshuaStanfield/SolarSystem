//
//  PlanetsListTableViewController.swift
//  SolarSystem
//
//  Created by Stanfield on 8/3/21.
//

import UIKit

class PlanetsListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Solar System"
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerImageView = UIImageView()
            headerImageView.image = UIImage(named: "solarSystem")
           let headerView = UIView()
           headerView.backgroundColor = .white
           headerView.addSubview(headerImageView)

           headerImageView.translatesAutoresizingMaskIntoConstraints = false
           headerImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
           headerImageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
           headerImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
           headerImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        return headerImageView
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetsListCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.planetName
        cell.detailTextLabel?.text = "Planet Index: \(indexPath.row + 1)"
        cell.imageView?.image = UIImage(named: planet.planetImageName)
        

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDOO: Identifier, index, destination, object to send, object to receive.
        
        if segue.identifier == "toPlanetDetailVC" {
            if let index = tableView.indexPathForSelectedRow {
                guard let destinationVC = segue.destination as? PlanetDetailViewController else {return}
                
                let planetToSend = PlanetController.planets[index.row]
                
                destinationVC.planet = planetToSend
            }
        }
    }
}
