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
    
    // gère le nombre de ligne
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableauEtudiant.count
    }
    
    // gère la mat et l'affichage des elements dans les celllules
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listeEtudiantView.dequeueReusableCell(withIdentifier: "idCelluleEtu") as! CelluleEtudiant
        let etudiantList = tableauEtudiant[indexPath.row]
        cell.majCellule(etu: etudiantList)
        
        // decalage de la couleur  1/2
        if ((indexPath.row % 2) != 0) {
            cell.backgroundColor = UIColor.yellow
        }
            
        return cell
    }
    
    // gère la suppression des lignes
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
     {
         if editingStyle == .delete
         {
             tableauEtudiant.remove(at: indexPath.row)
             self.listeEtudiantView.reloadData()
         }
     }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        creationTableauEtudiant()
        listeEtudiantView.contentInset.top = 50
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

