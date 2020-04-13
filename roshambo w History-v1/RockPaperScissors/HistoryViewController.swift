//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by James Miller on 4/1/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit
import Foundation

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var history: [RPSMatch]!
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath)
        let match = self.history[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = vicotryStatusDescription(match)
        //cell?.imageView?.text = UIImage(named: item.imageName)
        
        cell.detailTextLabel!.text = "\(match.p1) vs. \(match.p2)"
        return cell
    }
    
    func vicotryStatusDescription(_ match: RPSMatch) -> String {
        
        if (match.p1 == match.p2) {
            return "Tie"
        } else if (match.p1.defeats(match.p2)) {
            return "Win!"
        } else {
            return "Loss!"
        }
    }
    
 
    
    
    @IBAction func done(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    }
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

