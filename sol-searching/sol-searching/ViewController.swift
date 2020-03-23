//
//  ViewController.swift
//  sol-searching
//
//  Created by Daniel Lee on 3/11/20.
//  Copyright © 2020 dlee100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func sunBtn(_ sender: Any) {
    }
    
    @IBAction func mercuryBtn(_ sender: Any) {
    }
    
    @IBAction func venusBtn(_ sender: Any) {
    }
    
    @IBAction func earthBtn(_ sender: Any) {
    }
    
    @IBAction func marsBtn(_ sender: Any) {
    }
    
    @IBAction func jupiterBtn(_ sender: Any) {
    }
    
    @IBAction func saturnBtn(_ sender: Any) {
    }
    
    @IBAction func uranusBtn(_ sender: Any) {
    }
    
    @IBAction func neptuneBtn(_ sender: Any) {
    }
    
    func populateArray(){
        let sol0 = SolInfo()
        sol0.ObjectName = "Sun"
        //sol0.ObjectImageName = ""
        sol0.ObjectAU = 0
        sol0.ObjectYear = 0
        //sol0.ObjectSite = ""
        sol0.ObjectDescription = ""
        
        let sol1 = SolInfo()
        sol1.ObjectName = "Mercury"
        //sol1.ObjectImageName = ""
        sol1.ObjectAU = 0.4
        sol1.ObjectYear = 88
        //sol1.ObjectSite = ""
        sol1.ObjectDescription = ""
        
        let sol2 = SolInfo()
        sol0.ObjectName = "Venus"
        //sol2.ObjectImageName = ""
        sol2.ObjectAU = 0.7
        sol2.ObjectYear = 225
        //sol2.ObjectSite = ""
        sol2.ObjectDescription = ""
        
        let sol3 = SolInfo()
        sol3.ObjectName = "Earth"
        //sol3.ObjectImageName = ""
        sol3.ObjectAU = 1
        sol3.ObjectYear = 365
        //sol3.ObjectSite = ""
        sol3.ObjectDescription = ""
        
        let sol4 = SolInfo()
        sol4.ObjectName = "Mars"
        //sol4.ObjectImageName = ""
        sol4.ObjectAU = 1.524
        sol4.ObjectYear = 687
        //sol4.ObjectSite = ""
        sol4.ObjectDescription = ""
        
        let sol5 = SolInfo()
        sol5.ObjectName = "Jupiter"
        //sol5.ObjectImageName = ""
        sol5.ObjectAU = 5.2
        sol5.ObjectYear = 4300
        //sol5.ObjectSite = ""
        sol5.ObjectDescription = ""
        
        let sol6 = SolInfo()
        sol6.ObjectName = "Saturn"
        //sol6.ObjectImageName = ""
        sol6.ObjectAU = 9.6
        sol6.ObjectYear = 11000
        //sol6.ObjectSite = ""
        sol6.ObjectDescription = ""
        
        let sol7 = SolInfo()
        sol7.ObjectName = "Uranus"
        //sol7.ObjectImageName = ""
        sol7.ObjectAU = 19.2
        sol7.ObjectYear = 31000
        //sol7.ObjectSite = ""
        sol7.ObjectDescription = ""
        
        let sol8 = SolInfo()
        sol8.ObjectName = "Neptune"
        //sol8.ObjectImageName = ""
        sol8.ObjectAU = 30.1
        sol8.ObjectYear = 60200
        //sol8.ObjectSite = ""
        sol8.ObjectDescription = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    

}

