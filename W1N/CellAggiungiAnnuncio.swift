//
//  CellAggiungiAnnuncio.swift
//  W1N
//
//  Created by Stefano Miceli on 23/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit

class CellAggiungiAnnuncio: UITableViewCell {

    @IBOutlet var ButtonAggiungiAnnuncio: UIButton!
    
    
    @IBOutlet var LabelRow1: UILabel!
    
    
    @IBOutlet var LabelRow2: UILabel!
    
    
    
    @IBAction func AggiungiAnnuncio(_ sender: UIButton) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
