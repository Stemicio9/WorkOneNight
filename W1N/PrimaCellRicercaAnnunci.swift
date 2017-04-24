//
//  PrimaCellRicercaAnnunci.swift
//  W1N
//
//  Created by Stefano Miceli on 23/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit

class PrimaCellRicercaAnnunci: UITableViewCell {
    
    @IBOutlet var CercaSuMappaButton: UIButton!
    
    
    @IBOutlet var CittaTextField: UITextField!
    
    @IBOutlet var SettoreTextField: UITextField!
    
    
    @IBOutlet var DatePickerAnnuncio: UIDatePicker!

    @IBOutlet var PagaTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
