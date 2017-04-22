//
//  TuoiAnnunciView.swift
//  W1N
//
//  Created by Stefano Miceli on 12/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit

class TuoiAnnunciView: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate {
    
    @IBOutlet var BarraDiRicerca: UISearchBar!
    
    var annunci = ["Cerco Cameriere", "Cerco Cuoco", "Cerco Saldatore", "Cerco Venditore",
        "Cerco Giardiniere", "Cerco sommelier", "Royal Oak", "CASK Pub and Kitchen"]

    override func viewDidLoad() {
        super.viewDidLoad()

        BarraDiRicerca.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //UITableViewDataSource Implementation
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int {
            // Return the number of rows in the section.
         
            return annunci.count
    }
    
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {

         
      
       let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
                //set the data here
             
            
            
            
            // Configure the cell...
            
                cell.textLabel?.text = annunci[indexPath.row]

            
            return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
