//
//  ViewController.swift
//  Personal
//
//  Created by Tyler Radke on 8/31/22.
//

import UIKit

class ViewController: UIViewController {

    //Sets up variables for the dice
    @IBOutlet weak var die1: UIImageView!
    @IBOutlet weak var die2: UIImageView!
    @IBOutlet weak var die3: UIImageView!
    @IBOutlet weak var die4: UIImageView!
    @IBOutlet weak var die5: UIImageView!
    
    //MARK: variables for win condition buttons so they can be disabled
    
    //upper
    @IBOutlet weak var ones: UIButton!
    @IBOutlet weak var twos: UIButton!
    @IBOutlet weak var threes: UIButton!
    @IBOutlet weak var fours: UIButton!
    @IBOutlet weak var fives: UIButton!
    @IBOutlet weak var sixes: UIButton!
    
    //lower
    
    @IBOutlet weak var threeOfAKind: UIButton!
    @IBOutlet weak var fourOfAKind: UIButton!
    @IBOutlet weak var fullHouse: UIButton!
    @IBOutlet weak var smallStraight: UIButton!
    @IBOutlet weak var largeStraight: UIButton!
    @IBOutlet weak var chance: UIButton!
    @IBOutlet weak var yahtzee: UIButton!
    
    //sets up variables for the hold toggles
    var dieOneHold = false
    var dieTwoHold = false
    var dieThreeHold = false
    var dieFourHold = false
    var dieFiveHold = false
    
    
    //creates a blank array to store the dice values for scoring, and the score
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var rollButton: UIButton!
    var score = 0
    
    @IBOutlet weak var rollsLeftLabel: UILabel!
    
    var roll = [0,0,0,0,0]
    var rollsLeft = 3
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   //MARK: Functions for the hold toggles
    @IBAction func buttonOne(_ sender: Any) {
        dieOneHold.toggle()
        
        if dieOneHold == true {
            die1.backgroundColor = .black
          
            
        } else {
            die1.backgroundColor = .clear
        
        }
        
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        dieTwoHold.toggle()
        if dieTwoHold == true {
            die2.backgroundColor = .black
           
        } else {
            die2.backgroundColor = .clear
           
        }
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        dieThreeHold.toggle()
        if dieThreeHold == true {
            die3.backgroundColor = .black
           
        } else {
            die3.backgroundColor = .clear
          
        }
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        dieFourHold.toggle()
        if dieFourHold == true {
            die4.backgroundColor = .black
         
        } else {
            die4.backgroundColor = .clear
          
        }
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        dieFiveHold.toggle()
        if dieFiveHold == true {
            die5.backgroundColor = .black
           
        } else {
            die5.backgroundColor = .clear
           
        }
    }
    
    //rolls the dice
    @IBAction func rollButton(_ sender: Any) {
        
        rollsLeft-=1
        rollsLeftLabel.text = "Rolls: \(rollsLeft)"
        if rollsLeft == 0 {
            rollButton.isEnabled = false
            
        }
        //rolls the dice
        for (index,_) in roll.enumerated() {
            
            
            switch index {
                
            case 0:
                if dieOneHold == true {
                    continue
                }
                roll[0] = Int.random(in: 1...6)
                die1.image = UIImage(systemName: "die.face.\(roll[0]).fill")
                
                
            
            case 1:
                if dieTwoHold == true {
                    continue
                }
                
                roll[1] = Int.random(in: 1...6)
                die2.image = UIImage(systemName: "die.face.\(roll[1]).fill")
            case 2:
                
                if dieThreeHold == true {
                    continue
                }
                roll[2] = Int.random(in: 1...6)
                die3.image = UIImage(systemName: "die.face.\(roll[2]).fill")
            case 3:
                if dieFourHold == true {
                    continue
                }
                
                roll[3] = Int.random(in: 1...6)
                die4.image = UIImage(systemName: "die.face.\(roll[3]).fill")
            case 4:
                if dieFiveHold == true {
                    continue
                }
                roll[4] = Int.random(in: 1...6)
                die5.image = UIImage(systemName: "die.face.\(roll[4]).fill")
            default:
                break
               
       }

        }
        
       
       
            
    
    }
    
 
    func updateScore() {
        scoreLabel.text = "Score: \(score)"
        rollsLeft = 3
        rollsLeftLabel.text = "Rolls: 3"
        rollButton.isEnabled = true
        
        
        dieOneHold = false
        dieTwoHold = false
        dieThreeHold = false
        dieFourHold = false
        dieFiveHold = false
        
        die1.backgroundColor = .clear
        die2.backgroundColor = .clear
        die3.backgroundColor = .clear
        die4.backgroundColor = .clear
        die5.backgroundColor = .clear
    }
   
   //MARK: Functions to check upper section win conditions
    @IBAction func onesCheck(_ sender: Any) {
        var total = 0
        for number in roll {
            if number == 1 {
                score+=1
                total+=1
            }
        }
        ones.setTitle("Ones: \(total)", for: .normal)
        updateScore()
        
        ones.isEnabled = false
        }
        
    @IBAction func twosCheck(_ sender: Any) {
        var total = 0
        for number in roll {
            if number == 2 {
                score+=2
                total+=2
            }
        }
        updateScore()
        twos.setTitle("Twos: \(total)", for: .normal)
        twos.isEnabled = false
        }
    
    @IBAction func threesCheck(_ sender: Any) {
        var total = 0
        for number in roll {
            if number == 3 {
                score+=3
                total+=3
            }
        }
        updateScore()
        threes.setTitle("Threes: \(total)", for: .normal)
        threes.isEnabled = false
    }
    
    @IBAction func foursCheck(_ sender: Any) {
        var total = 0
        for number in roll {
            if number == 4 {
                score+=4
                total+=4
            }
        }
        updateScore()
        fours.setTitle("Fours: \(total)", for: .normal)
        fours.isEnabled = false
    }
    
    @IBAction func fivesCheck(_ sender: Any) {
        var total = 0
        for number in roll {
            if number == 5 {
                score+=5
                total+=5
            }
        }
        updateScore()
        fives.setTitle("Fives: \(total)", for: .normal)
        fives.isEnabled = false
    }
    
    @IBAction func sixesCheck(_ sender: Any) {
        var total = 0
        for number in roll {
            if number == 6 {
                score+=6
                total+=6
            }
        }
        updateScore()
        sixes.setTitle("Sixes: \(total)", for: .normal)
        sixes.isEnabled = false
        roll = [0,0,0,0,0]
        
        
        
        
        
        
    }
    
    
    //MARK: Functions to check lower section win conditions
    @IBAction func threeOfAKind(_ sender: Any) {
        
        //Sorts the array, and checks if the first or last 3 numbers are equal. Boom, 3 of a kind.
        roll.sort()
        if roll[0] == roll[1] && roll[0] == roll[2] || roll[2] == roll[3] && roll[2] == roll[4] {
            score+=roll.reduce(0,+)
            updateScore()
            threeOfAKind.isEnabled = false
        } else {
            score+=0
            updateScore()
            threeOfAKind.isEnabled = false
        }
    }
    
    
    
    @IBAction func fourOfAKind(_ sender: Any) {
        
        roll.sort()
        if (roll[0] == roll[1] && roll[0] == roll[2] && roll[0] == roll[3]) || roll[1] == roll[2] && roll[2] == roll[3] && roll[2] == roll[4] {
            score+=roll.reduce(0,+)
            updateScore()
            fourOfAKind.isEnabled = false
        } else {
            score+=0
            updateScore()
            fourOfAKind.isEnabled = false
        }
    }
    
    @IBAction func fullHouse(_ sender: Any) {
        roll.sort()
        
        //First two indexes of a sorted full house will always be equal. If they're not, it isn't a full house
        if roll[0] != roll[1] {
            updateScore()
            fullHouse.isEnabled = false
        } else if roll[0] == roll[1] {
            
            //If index 0 and 1 are equal, then it checks if for the two possibilities that make up a full house
            if (roll[1] == roll[2] && roll[3] == roll[4]) || (roll[2] == roll[3] && roll[2] == roll[4]) {
                score+=25
                updateScore()
                fullHouse.isEnabled = false
            }
            
        }
    }
    
    @IBAction func smallStraight(_ sender: Any) {
        roll.sort()
        print(roll)
        
        if roll[0...3] == [1,2,3,4] || roll[1...4] == [2,3,4,5] {
           score+=30
            updateScore()
            
        
        }
        smallStraight.isEnabled = false
        updateScore()
    }
    
    @IBAction func largeStraight(_ sender: Any) {
        roll.sort()
        
        if roll == [1,2,3,4,5] || roll == [2,3,4,5,6] {
            score+=40
            updateScore()
        }
        largeStraight.isEnabled = false
        updateScore()
    }
    
    @IBAction func chance(_ sender: Any) {
        score+=roll.reduce(0, +)
        updateScore()
        chance.isEnabled = false
        
    }
    
    var totalYahtzees = 0
    @IBAction func yahtzee(_ sender: Any) {
        let yah = roll[0]
        
        
        if roll == [yah,yah,yah,yah,yah] && totalYahtzees == 0{
            totalYahtzees+=1
            score+=50
            updateScore()
        } else if roll == [yah,yah,yah,yah,yah] && totalYahtzees > 0 {
            score+=100
            updateScore()
        } else {
            updateScore()
            yahtzee.isEnabled = false
        }
        
    }
}



