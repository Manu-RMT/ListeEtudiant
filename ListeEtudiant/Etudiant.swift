//
//  Etudiant.swift
//  ListeEtudiant
//
//  Created by Manuel Ramanitra on 12/02/2024.
//

import Foundation

class Etudiant {
    var nom : String
    var prenom : String
    var formation : String
    var groupeTP : String
    var nomPhoto : String
    var nbAbsence : Int
    
    
    init(nom: String, prenom: String, formation: String, groupeTP: String, nomPhoto: String, numAbsence: Int) {
        self.nom = nom
        self.prenom = prenom
        self.formation = formation
        self.groupeTP = groupeTP
        self.nomPhoto = "photoEtudiant.png"
        self.nbAbsence = numAbsence
    }
    
}
    