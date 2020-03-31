//
//  ViewController.swift
//  sol-searching
//
//  Created by Daniel Lee on 3/11/20.
//  Copyright © 2020 dlee100. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAU: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var ObjectImageName: UIImageView!
    @IBOutlet weak var ObjectSymbol: UIImageView!
    @IBOutlet weak var lblRef: UILabel!
    
    
    var solObjArray = [SolInfo]()
    
    var siteURL = ""
    
    var someSound: AVAudioPlayer!
    
    func setLabels(){
        someSound.play()
        
        let selectedObj = solObjArray.randomElement()
        
        if selectedObj != nil{
            lblName.text = selectedObj?.ObjectName
        
            lblAU.text = "AU: \(String(selectedObj!.ObjectAU))"
            
            lblYear.text = "Year: \(String(selectedObj!.ObjectYear)) Earth days"
            
            let img = UIImage(named:selectedObj!.ObjectImageName)
            ObjectImageName.image = img
            
            let symimg = UIImage(named:selectedObj!.ObjectSymbol)
            ObjectSymbol.image = symimg
            
            siteURL = selectedObj!.ObjectSite
            
            lblDesc.text = selectedObj!.ObjectDescription
            
            lblRef.text = selectedObj!.ObjectReference
            
            
            
             if ObjectImageName.alpha == 0 {
                 UIView.animate(withDuration: 3.0, animations: {
                     self.lblName.alpha = 1.0
                     self.ObjectImageName.alpha = 1.0
                     self.lblDesc.alpha = 1.0
                     self.lblAU.alpha = 1.0
                     self.lblYear.alpha = 1.0
                     self.view.backgroundColor = UIColor(red:252/255, green:202/255, blue:1/255, alpha:1)
                 })
             }
             
            
        }
    }
    
    
    @IBAction func btnShowSol(_ sender: Any) {
        setLabels()
    }
    
    @IBAction func btnGoSrc(_ sender: Any) {
        let app = UIApplication.shared
        
        if siteURL == "" {siteURL = "http://www.apple.com/"}
        
        let urlAddress = siteURL
        let urlw = URL(string:urlAddress)
        app.open(urlw!)
    }
    
    
    func populateArray(){
        let sol0 = SolInfo()
        sol0.ObjectName = "Sol: Sun"
        sol0.ObjectImageName = "images/sun.jpg"
        sol0.ObjectAU = 0
        sol0.ObjectYear = 0
        sol0.ObjectSite = "https://solarsystem.nasa.gov/solar-system/sun/overview/"
        sol0.ObjectDescription = "The Sun is the heart of our solar system. Its immense gravity brings everything in the solar system in order. As big and massive as it is, it is classified as a measely Yellow Dwarf Star. There are much bigger stars out there beyond our system."
        sol0.ObjectSymbol = "images/sun-symbol.png"
        sol0.ObjectReference = "Sun: By NASA/SDO (AIA) - http://sdo.gsfc.nasa.gov/assets/img/browse/2010/08/19/20100819_003221_4096_0304.jpg, Public Domain, https://commons.wikimedia.org/w/index.php?curid=11348381 \nSun Symbol: By Melian - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=643618"
        solObjArray.insert(sol0, at:0)
        
        
        let sol1 = SolInfo()
        sol1.ObjectName = "Sol I: Mercury"
        sol1.ObjectImageName = "images/mercury.jpg"
        sol1.ObjectAU = 0.4
        sol1.ObjectYear = 88
        sol1.ObjectSite = "https://solarsystem.nasa.gov/planets/mercury/overview/"
        sol1.ObjectSymbol = "images/mercury-symbol.png"
        sol1.ObjectDescription = "Mercury is the first planet from the Sun's gravity well. Because of its fast orbit around the Sun, this planet was named after the Roman messenger god, Mercury. It is only slightly larger than Earth's moon and is surprisingly not the hottest planet despite its close distance to the Sun."
        sol1.ObjectReference = "Mercury: By NASA/Johns Hopkins University Applied Physics Laboratory/Carnegie Institution of Washington. Edited version of Image:Mercury in color - Prockter07.jpg by Papa Lima Whiskey. - NASA/JPL, Public Domain, https://commons.wikimedia.org/w/index.php?curid=4163406 \nMercury Symbol: By Lexicon - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=688876"
        solObjArray.append(sol1)
        
        
        let sol2 = SolInfo()
        sol2.ObjectName = "Sol II: Venus"
        sol2.ObjectImageName = "images/venus.jpg"
        sol2.ObjectAU = 0.7
        sol2.ObjectYear = 225
        sol2.ObjectSite = "https://solarsystem.nasa.gov/planets/venus/overview/"
        sol2.ObjectSymbol = "images/venus-symbol.png"
        sol2.ObjectDescription = "Venus is the second planet from the Sun's gravity well and the second brightest object on Earth's night sky. Due to its thick greenhouse atmosphere, it takes the crown of being the hottest planet in the solar system. Venus is called the 'sister' planet to Earth due to similar size and makeup. The planet is named after the Roman god of love and beauty."
        sol2.ObjectReference = "Venus: By NASA or Ricardo Nunes - http://www.astrosurf.com/nunes/explor/explor_m10.htm, Public Domain, https://commons.wikimedia.org/w/index.php?curid=338424 \nVenus Symbol: By Kyle the hacker - Own work Unicode U+2640 (♀)., Public Domain, https://commons.wikimedia.org/w/index.php?curid=868716"
        solObjArray.append(sol2)
        
        
        let sol3 = SolInfo()
        sol3.ObjectName = "Sol III: Earth"
        sol3.ObjectImageName = "images/earth.jpg"
        sol3.ObjectAU = 1
        sol3.ObjectYear = 365
        sol3.ObjectSite = "https://solarsystem.nasa.gov/planets/earth/overview/"
        sol3.ObjectSymbol = "images/earth-symbol.png"
        sol3.ObjectDescription = "Earth is the third planet from the Sun's gravity well. It is the birthplace and home planet of mankind. It is the largest terrestial planet and object in the solar system. It holds one large moon around its orbit, Luna. Earth is simply named after what it is made of: dirt."
        sol3.ObjectReference = "Earth: By NASA/Apollo 17 crew; taken by either Harrison Schmitt or Ron Evans - https://web.archive.org/web/20160112123725/http://grin.hq.nasa.gov/ABSTRACTS/GPN-2000-001138.html (image link); see also https://www.nasa.gov/multimedia/imagegallery/image_feature_329.html, Public Domain, https://commons.wikimedia.org/w/index.php?curid=43894484 \nEarth Symbol: By OsgoodeLawyer - Unicode (U+2295:⊕, U+2641:♁, U+2A01:⨁, U+2D32:ⴲ), Public Domain, https://commons.wikimedia.org/w/index.php?curid=676909"
        solObjArray.append(sol3)
        
        
        let sol4 = SolInfo()
        sol4.ObjectName = "Sol IV: Mars"
        sol4.ObjectImageName = "images/mars.jpg"
        sol4.ObjectAU = 1.524
        sol4.ObjectYear = 687
        sol4.ObjectSite = "https://solarsystem.nasa.gov/planets/mars/overview/"
        sol4.ObjectSymbol = "images/mars-symbol.png"
        sol4.ObjectDescription = "Mars is the fourth planet from the Sun's gravity well. It is often looked at as humanity's next home due to its similar structure to Earth. Mars rotates in 24.75 hours and has a similar tilt on its axis like Earth. But its size and gravity is one-third of Earth's. Mars holds two small asteroid moons, Phobos and Deimos. Mars is named after the Roman god of war. "
        sol4.ObjectReference = "Mars: By ESA - European Space Agency & Max-Planck Institute for Solar System Research for OSIRIS Team ESA/MPS/UPD/LAM/IAA/RSSD/INTA/UPM/DASP/IDA - http://www.esa.int/spaceinimages/Images/2007/02/True-colour_image_of_Mars_seen_by_OSIRIS, CC BY-SA 3.0-igo, https://commons.wikimedia.org/w/index.php?curid=56489423 \nMars Symbol: By This vector image was created with Inkscape by Lexicon, and then manually replaced by sarang. - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=873768"
        solObjArray.append(sol4)
        
        
        let sol5 = SolInfo()
        sol5.ObjectName = "Sol V: Jupiter"
        sol5.ObjectImageName = "images/jupiter.jpg"
        sol5.ObjectAU = 5.2
        sol5.ObjectYear = 4333
        sol5.ObjectSite = "https://solarsystem.nasa.gov/planets/jupiter/overview/"
        sol5.ObjectSymbol = "images/jupiter-symbol.png"
        sol5.ObjectDescription = "Jupiter is the fifth planet from the Sun's gravity well. Jupiter holds 79 confirmed moons orbiting its plane and is the largest planet in the solar system. Jupiter is named after the Roman king of the gods."
        sol5.ObjectReference = "Jupiter: By NASA, ESA, and A. Simon (Goddard Space Flight Center) - http://www.spacetelescope.org/images/heic1410a/ or http://hubblesite.org/newscenter/archive/releases/2014/24/image/b/, Public Domain, https://commons.wikimedia.org/w/index.php?curid=32799232 \nJupiter Symbol: By Lexicon - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=1117299"
        solObjArray.append(sol5)
        
        
        let sol6 = SolInfo()
        sol6.ObjectName = "Sol VI: Saturn"
        sol6.ObjectImageName = "images/saturn.jpg"
        sol6.ObjectAU = 9.6
        sol6.ObjectYear = 10759
        sol6.ObjectSite = "https://solarsystem.nasa.gov/planets/saturn/overview/"
        sol6.ObjectSymbol = "images/saturn-symbol.png"
        sol6.ObjectDescription = "Saturn is the sixth planet from the Sun's gravity well. Saturn holds 82 confirmed moons and more than a dozen magnificent rings. With its beauty, it is known as the 'jewel' of the solar system. Saturn is named after the Roman god of time."
        sol6.ObjectReference = "Saturn: By NASA / JPL / Space Science Institute - http://www.ciclops.org/view/5155/Saturn-Four-Years-On http://www.nasa.gov/images/content/365640main_PIA11141_full.jpg http://photojournal.jpl.nasa.gov/catalog/PIA11141, Public Domain, https://commons.wikimedia.org/w/index.php?curid=7228953 \nSaturn Symbol: By Lexicon - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=1117303"
        solObjArray.append(sol6)
        
        
        let sol7 = SolInfo()
        sol7.ObjectName = "Sol VII: Uranus"
        sol7.ObjectImageName = "images/uranus.jpg"
        sol7.ObjectAU = 19.2
        sol7.ObjectYear = 30687
        sol7.ObjectSite = "https://solarsystem.nasa.gov/planets/uranus/overview/"
        sol7.ObjectSymbol = "images/uranus-symbol.png"
        sol7.ObjectDescription = "Uranus is the seventh planet from the Sun's gravity well. Uranus holds 27 confirmed moons. It is an ice giant that rotates on a wildly tilted axis. For this, Uranus is known as the 'sideways' planet and with its milky blue color it is named after the Greek god of the sky."
        sol7.ObjectReference = "Uranus: By NASA/JPL-Caltech - https://web.archive.org/web/20090119235457/http://planetquest.jpl.nasa.gov/milestones_show/slide1.html (image link)http://photojournal.jpl.nasa.gov/catalog/PIA18182 (image link), Public Domain, https://commons.wikimedia.org/w/index.php?curid=5649239 \nUranus Symbol: By Lexicon - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=1024180"
        solObjArray.append(sol7)
        
        
        let sol8 = SolInfo()
        sol8.ObjectName = "Sol VIII: Neptune"
        sol8.ObjectImageName = "images/neptune.jpg"
        sol8.ObjectAU = 30.1
        sol8.ObjectYear = 60190
        sol8.ObjectSite = "https://solarsystem.nasa.gov/planets/neptune/overview/"
        sol8.ObjectSymbol = "images/neptune-symbol.png"
        sol8.ObjectDescription = "Neptune is the eighth and last planet from the Sun's gravity well. It holds 14 confirm moons and because of its deep blue color the planet was named after the Roman god of the sea, Neptune."
        sol8.ObjectReference = "Neptune: By NASA/JPL - http://photojournal.jpl.nasa.gov/catalog/PIA00046, Public Domain, https://commons.wikimedia.org/w/index.php?curid=31789 \nNeptune Symbol: By Amit6 - Own work, Public Domain, https://commons.wikimedia.org/w/index.php?curid=1117307"
        solObjArray.append(sol8)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        someSound = try?
        AVAudioPlayer(contentsOf: URL(fileURLWithPath:Bundle.main.path(forResource:"buttonsound", ofType: "wav")!))
        
        populateArray()
        setLabels()
        
    }
    
    

}

