//
//  Annuncio.swift
//  W1N
//
//  Created by Stefano Miceli on 23/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import Foundation
import GoogleMaps


class Annuncio {
    
    var titolo: String!
    var settore: String!
    var città: String!
    var descrizione: String!
    var data: Date!
    var paga: Int!
    var fascia_oraria: FasciaOraria!
    var luogo: String!
    var posizione: CLLocation!
    
    init(titolo: String, settore: String, città: String, fascia_oraria: FasciaOraria ) {
        self.titolo = titolo
        self.settore = settore
        self.città = città
        self.fascia_oraria = fascia_oraria
    }
    
    
}
