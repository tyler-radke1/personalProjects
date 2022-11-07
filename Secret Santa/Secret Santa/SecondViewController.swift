//
//  SecondViewController.swift
//  Secret Santa
//
//  Created by Tyler Radke on 10/3/22.
//

import UIKit

class SecondViewController: ViewController {
    
    var badPairs: [String: String] = [:]
    var goodPairs: [String: String] = [:]
    @IBOutlet weak var needNamesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    var bagOfNamesString: [String] = []
    @IBOutlet weak var doNotName1: UITextField!
    @IBOutlet weak var doNotName2: UITextField!
    
    init?(coder: NSCoder, names: [String]) {
        bagOfNamesString = names
        super.init(coder: coder)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func dontPairButton(_ sender: UIButton) {
        guard let firstName = doNotName1.text, firstName != "" else {
            needNamesLabel.text = "You need to put in some names"
            return
            
        }
        guard let secondName = doNotName2.text, secondName != "" else {return needNamesLabel.text = "You need to put in some names"}
        
        badPairs[firstName] = secondName
        needNamesLabel.text = "Alrighty! \(firstName) will not be paired with \(secondName)"
        
        
    }
    
    @IBSegueAction func toThirdAction(_ coder: NSCoder) -> ThirdViewController? {
        return ThirdViewController(coder: coder, thePairs: goodPairs)
    }
    @IBAction func createPairs(_ sender: UIButton) {
        var namesDummy = bagOfNamesString
        for name in bagOfNamesString {
            var i = Int.random(in: 0...namesDummy.count-1)
            goodPairs[name] = namesDummy[i]
            namesDummy.remove(at: i)
            
        }
        
        
        performSegue(withIdentifier: "toThird", sender: nil)
    }
    


    }

