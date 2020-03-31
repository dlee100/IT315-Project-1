//
//  ViewController.swift
//  sol-searching
//
//  Created by Daniel Lee on 3/11/20.
//  Copyright © 2020 dlee100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAU: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    
    var solObjArray = [SolInfo]()
    
    var siteURL = ""
    
    func setLabels(){
        //someSound.play()
        
        let selectedObj = solObjArray.randomElement()
        
        if selectedObj != nil{
            lblName.text = selectedObj?.ObjectName
        
            lblAU.text = "AU: \(String(selectedObj!.ObjectAU))"
            
            lblYear.text = "Year: \(String(selectedObj!.ObjectYear)) Earth days"
            
            let img = UIImage(named:selectedObj!.ObjectImageName)
            //imgHTImage.image = img
            
            siteURL = selectedObj!.ObjectSite
            
            lblDesc.text = selectedObj!.ObjectDescription
            
            // storage mechanism
            //let favorite = UserDefaults.standard.string(forKey: "favorite") ?? ""
            //swFav.isOn = (selectedHike!.TrailName == favorite)
            
            /*
             if imgHTImage.alpha == 0 {
                 UIView.animate(withDuration: 3.0, animations: {
                     self.lblName.alpha = 1.0
                     self.imgHTImage.alpha = 1.0
                     self.lblDesc.alpha = 1.0
                     self.lblAlt.alpha = 1.0
                     self.lblLen.alpha = 1.0
                     self.swFav.alpha = 1.0
                     self.view.backgroundColor = UIColor(red:252/255, green:202/255, blue:1/255, alpha:1)
                 })
             }
             */
            
        }
    }
    
    
    @IBAction func btnShowSol(_ sender: Any) {
        setLabels()
    }
    
    func populateArray(){
        let sol0 = SolInfo()
        sol0.ObjectName = "Sun"
        //sol0.ObjectImageName = ""
        sol0.ObjectAU = 0
        sol0.ObjectYear = 0
        //sol0.ObjectSite = ""
        sol0.ObjectDescription = ""
        solObjArray.insert(sol0, at:0)
        
        
        let sol1 = SolInfo()
        sol1.ObjectName = "Mercury"
        //sol1.ObjectImageName = ""
        sol1.ObjectAU = 0.4
        sol1.ObjectYear = 88
        //sol1.ObjectSite = ""
        sol1.ObjectDescription = ""
        solObjArray.append(sol1)
        
        
        let sol2 = SolInfo()
        sol2.ObjectName = "Venus"
        //sol2.ObjectImageName = ""
        sol2.ObjectAU = 0.7
        sol2.ObjectYear = 225
        //sol2.ObjectSite = ""
        sol2.ObjectDescription = ""
        solObjArray.append(sol2)
        
        
        let sol3 = SolInfo()
        sol3.ObjectName = "Earth"
        //sol3.ObjectImageName = ""
        sol3.ObjectAU = 1
        sol3.ObjectYear = 365
        //sol3.ObjectSite = ""
        sol3.ObjectDescription = ""
        solObjArray.append(sol3)
        
        
        let sol4 = SolInfo()
        sol4.ObjectName = "Mars"
        //sol4.ObjectImageName = ""
        sol4.ObjectAU = 1.524
        sol4.ObjectYear = 687
        //sol4.ObjectSite = ""
        sol4.ObjectDescription = ""
        solObjArray.append(sol4)
        
        
        let sol5 = SolInfo()
        sol5.ObjectName = "Jupiter"
        //sol5.ObjectImageName = ""
        sol5.ObjectAU = 5.2
        sol5.ObjectYear = 4300
        //sol5.ObjectSite = ""
        sol5.ObjectDescription = ""
        solObjArray.append(sol5)
        
        
        let sol6 = SolInfo()
        sol6.ObjectName = "Saturn"
        //sol6.ObjectImageName = ""
        sol6.ObjectAU = 9.6
        sol6.ObjectYear = 11000
        //sol6.ObjectSite = ""
        sol6.ObjectDescription = ""
        solObjArray.append(sol6)
        
        
        let sol7 = SolInfo()
        sol7.ObjectName = "Uranus"
        //sol7.ObjectImageName = ""
        sol7.ObjectAU = 19.2
        sol7.ObjectYear = 31000
        //sol7.ObjectSite = ""
        sol7.ObjectDescription = ""
        solObjArray.append(sol7)
        
        
        let sol8 = SolInfo()
        sol8.ObjectName = "Neptune"
        //sol8.ObjectImageName = ""
        sol8.ObjectAU = 30.1
        sol8.ObjectYear = 60200
        //sol8.ObjectSite = ""
        sol8.ObjectDescription = ""
        solObjArray.append(sol8)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        populateArray()
        
        setLabels()
        
    }
    
    

}

