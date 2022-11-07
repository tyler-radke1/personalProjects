//
//  ViewController.swift
//  Secret Santa
//
//  Created by Tyler Radke on 10/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var enterNameText: UITextField!
    var names: [String] = []
    @IBOutlet weak var bagOfNames: UILabel!
    
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    
    @IBAction func addNameButton(_ sender: UIButton) {
        if let name = enterNameText.text {
            names.append(name)
            bagOfNames.text! += name + " "
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        names = []
        bagOfNames.text = ""
    }
    
    
    @IBAction func continueButton(_ sender: UIButton) {
        guard (names.count % 2 == 0) else {return errorLabel.text = "Need one more person!"}
        errorLabel.text = ""
        
        performSegue(withIdentifier: "secondScreen", sender: nil)
        
        
    }
    @IBSegueAction func segueAction(_ coder: NSCoder) -> SecondViewController? {
        return SecondViewController(coder: coder, names: names)
    }
    
}

