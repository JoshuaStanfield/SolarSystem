//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Stanfield on 8/3/21.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetDayLengthLabel: UILabel!
    @IBOutlet weak var planetDistanceFromSunLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // MARK: - Properties
    var planet: Planet?

    // MARK: - Functions
    func updateViews() {
        guard let planet = planet else {return}
        
        planetImageView.image = UIImage(named: planet.planetImageName)
        planetNameLabel.text = planet.planetName
        planetDiameterLabel.text = "Diameter: \(planet.planetDiameter)"
        planetDayLengthLabel.text = "Day Length: \(planet.planetDayLength) Hrs"
        planetDistanceFromSunLabel.text = "Distance from Sun: \(planet.maxMillionKMsFromSun) KMs"
    }
}
