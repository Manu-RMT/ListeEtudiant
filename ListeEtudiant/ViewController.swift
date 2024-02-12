//
//  ViewController.swift
//  listeEtudiantView
//
//  Created by Manuel Ramanitra on 12/02/2024.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate,UITableViewDataSource {
    var tableauEtudiant : [Etudiant] = []
    @IBOutlet weak var listeEtudiantView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableauEtudiant.count
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listeEtudiantView.dequeueReusableCell(withIdentifier: "idCelluleEtu") as! CelluleEtudiant
        let etudiantList = tableauEtudiant[indexPath.row]
        cell.majCellule(etu: etudiantList)
        return cell
    }
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        creationTableauEtudiant()
        let spacing: CGFloat = 2.0
        listeEtudiantView.contentInset = UIEdgeInsets(top: 50, left: spacing, bottom: 0, right: spacing)
        listeEtudiantView.rowHeight = 150
        
    }
    
    
    // crée les etudiant
    func creationTableauEtudiant() {
        tableauEtudiant.append(Etudiant(nom: "RMT", prenom: "Manu", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 10))
        tableauEtudiant.append(Etudiant(nom: "MTL", prenom: "Quentin", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 5))
        tableauEtudiant.append(Etudiant(nom: "CHK", prenom: "Feriel", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 20))
        tableauEtudiant.append(Etudiant(nom: "ETU3", prenom: "etu", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 2))
        tableauEtudiant.append(Etudiant(nom: "ETU4", prenom: "etu4", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 3))
        tableauEtudiant.append(Etudiant(nom: "ETU5", prenom: "etudiant5", formation: "M2", groupeTP: "GRP 2", nomPhoto: "photoEtudiant.png", numAbsence: 0))
    }

}

