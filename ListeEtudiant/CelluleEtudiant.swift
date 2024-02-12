//
//  CelluleEtudiant.swift
//  ListeEtudiant
//
//  Created by Manuel Ramanitra on 12/02/2024.
//

import UIKit

class CelluleEtudiant: UITableViewCell {

    @IBOutlet weak var nomEtudiant: UILabel!
    @IBOutlet weak var prenomEtudiat: UILabel!
    @IBOutlet weak var numTP: UILabel!
    @IBOutlet weak var nb_abscence: UILabel!
    @IBOutlet weak var img_etudiant: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // met à jour les éléments de la cellule
    func majCellule(etu : Etudiant) {
        nomEtudiant.text = etu.nom
        prenomEtudiat.text = etu.prenom
        numTP.text = etu.groupeTP
        nb_abscence.text = String(etu.nbAbsence)
        if let image = UIImage(named: etu.nomPhoto) {
            img_etudiant.image = image
        }
        
    }
    
    
    
}
    
