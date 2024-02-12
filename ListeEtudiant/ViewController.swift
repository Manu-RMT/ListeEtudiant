//
//  ViewController.swift
//  ListeEtudiant
//
//  Created by Manuel Ramanitra on 12/02/2024.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    var tableauEtudiant : [Etudiant] = []
    @IBOutlet weak var listeEtudiant: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        creationTableauEtudiant()
        
    }
    
    
    // crée les etudiant
    func creationTableauEtudiant() {
        tableauEtudiant.append(Etudiant(nom: "RMT", prenom: "Manu", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
        tableauEtudiant.append(Etudiant(nom: "MTL", prenom: "Quentin", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
        tableauEtudiant.append(Etudiant(nom: "CHK", prenom: "Feriel", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
        tableauEtudiant.append(Etudiant(nom: "ETU3", prenom: "etu", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
        tableauEtudiant.append(Etudiant(nom: "ETU4", prenom: "etu4", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
        tableauEtudiant.append(Etudiant(nom: "ETU5", prenom: "etudiant5", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
    }

}

