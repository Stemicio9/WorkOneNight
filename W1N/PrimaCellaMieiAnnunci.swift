//
//  PrimaCellaMieiAnnunci.swift
//  W1N
//
//  Created by Stefano Miceli on 13/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit

class PrimaCellaMieiAnnunci: UITableViewCell,UISearchBarDelegate {

    
    @IBOutlet weak var barraRicerca: UISearchBar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        barraRicerca.delegate = self
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
