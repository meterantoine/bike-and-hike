//
//  ServicesViewController.swift
//  Bike & Hike
//
//  Created by Antoine Perry on 9/5/19.
//  Copyright © 2019 Antoine Perry. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    var sentData1: String!
    var sentData2: String!
   

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = sentData1
        
        detailLabel.text = sentData1
        detailTextView.text = sentData2
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
