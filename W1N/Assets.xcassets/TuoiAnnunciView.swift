//
//  TuoiAnnunciView.swift
//  W1N
//
//  Created by Stefano Miceli on 12/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit

class TuoiAnnunciView: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet var BarraDiRicerca: UISearchBar!
    
    @IBOutlet weak var ListaAnnunci: UITableView!
    
    
    var annunci = ["Cerco Cameriere", "Cerco Cuoco", "Cerco Saldatore", "Cerco Venditore",
        "Cerco Giardiniere", "Cerco sommelier", "Royal Oak", "CASK Pub and Kitchen"]

    override func viewDidLoad() {
        super.viewDidLoad()

        BarraDiRicerca.delegate = self
        
     
        ListaAnnunci.estimatedRowHeight = 80
        
        
    
        
      //  ListaAnnunci.register(UINib(nibName:"CellAggiungiAnnuncio",bundle:nil), forCellReuseIdentifier: "cellAggiungiAnnuncio")
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // Qua c'è la funzione che fa apparire il popover
    
    @IBAction func PopoverAggiungiAnnuncio(_ sender: UIButton) {
        
        // get a reference to the view controller for the popover
        let popController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopoverAggiungiAnnuncio")
        
        // set the presentation style
        popController.modalPresentationStyle = UIModalPresentationStyle.popover
        
        // set up the popover presentation controller
        popController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.up
        popController.popoverPresentationController?.delegate = self
        popController.popoverPresentationController?.sourceView = sender as UIView // button
        popController.popoverPresentationController?.sourceRect = sender.bounds
        
        // present the popover
        self.present(popController, animated: true, completion: nil)
        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        // return UIModalPresentationStyle.FullScreen
        return UIModalPresentationStyle.none
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 77
        }
        else {
            return UITableViewAutomaticDimension
        }
        
    }
    
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {

      
            
            if indexPath.row == 0 {
                
               
              //  let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "aggiungiAnnuncioCell")
                let cell = ListaAnnunci.dequeueReusableCell(withIdentifier: "aggiungiAnnuncioCell", for: indexPath) as! AggiungiAnnuncioCell
              
                
                return cell
            }
            
            else {
      
       let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
                //set the data here
             
                
            
            // Configure the cell...
            
                cell.textLabel?.text = annunci[indexPath.row]
            
                return cell
            }
            
            
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
