//
//  ThirdViewController.swift
//  Secret Santa
//
//  Created by Tyler Radke on 10/5/22.
//

import UIKit

class ThirdViewController: ViewController {
    
   
    var santas: [String] = []
    var secrets: [String] = []
    @IBOutlet weak var upNextLabel: UILabel!
    
    @IBOutlet weak var santa: UILabel!
    
    @IBOutlet weak var secret: UILabel!
    
    @IBOutlet weak var buttonObject: UIButton!
    
    var thePairs: [String: String]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for (key, value) in thePairs {
            santas.append(key)
            secrets.append(value)
        }
        
        upNextLabel.text = santas[0] + ", you're up next!"
        // Do any additional setup after loading the view.
    }
    
    init?(coder: NSCoder, thePairs: [String: String]) {
        self.thePairs = thePairs
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var pairOn = 1
        
        upNextLabel.text = "\(santas[pairOn]), you're up next!"
    
        
        
        
       // buttonObject.isEnabled = (pairOn != santas.count) ? true : false
        pairOn += 1
    }
    
    
}
