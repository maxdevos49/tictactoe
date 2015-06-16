//
//  ViewController.swift
//  TicTacToeTeam
//
//  Created by Max DeVos on 6/7/15.
//  Copyright (c) 2015 HydraTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Button text variables
    @IBOutlet weak var TopLeftText: UIButton!
    @IBOutlet weak var TopCenterText: UIButton!
    @IBOutlet weak var TopRightText: UIButton!
    @IBOutlet weak var MiddleLeftText: UIButton!
    @IBOutlet weak var CenterText: UIButton!
    @IBOutlet weak var MiddleRightText: UIButton!
    @IBOutlet weak var BottomLeftText: UIButton!
    @IBOutlet weak var BottomCenterText: UIButton!
    @IBOutlet weak var BottomRightText: UIButton!
    
    //player turn variable
    var PlayerTurn = "Player1"
    
    //game play variable that allows gameto be started and stopped
    var gameplay:String = "True"
    
    //variables to determine if a button was pressed
    var button: [Int] = [0,0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    //all new code is below this point other than variable declarations
    
    
    //Top left button code
    @IBAction func TopLeftButton(sender: UIButton) {
        
        //check if button has been pressed before
        if button[0] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                
                self.TopLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[0] = 1
                
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[0] = 2
            }

        }
        
        //change button variable so it cant be changed again
        
        self.winning()
    }
    
    //Top center button code
    @IBAction func TopCenterButton(sender: UIButton) {
        
        if button[1] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopCenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                 button[1] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopCenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                 button[1] = 2
            }
            
        }
       
        self.winning()
    }
    
    //Top right button code
    @IBAction func TopRightButton(sender: UIButton) {
        
        if button[2] == 0{
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[2] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[2] = 2
            }
            
            
        }
        
        self.winning()
    }
    
    //middle left button code
    @IBAction func MiddleLeftButton(sender: UIButton) {
        
        if button[3] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[3] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[3] = 2
            }

            
        }
        
        self.winning()
    }
    
    //center button code
    @IBAction func CenterButton(sender: UIButton) {
        
        if button[4] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.CenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[4] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.CenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[4] = 2
            }
            
            
        }
        
        self.winning()
    }
    
    //middle right button code
    @IBAction func MiddleRightButton(sender: UIButton) {
        
        if button[5] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[5] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[5] = 2
            }
        }
        
        self.winning()
    }
    
    //bottom left button code
    @IBAction func BottomLeftButton(sender: UIButton) {
        
        if button[6] == 0{
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{
                self.BottomLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[6] = 1
            }
            else if PlayerTurn == "Player2"{
                self.BottomLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[6] = 2
            }
            
        }
        
        self.winning()
    }
    
    //bottom center button code
    @IBAction func BottomCenterButton(sender: UIButton) {
        
        if button[7] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomCenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[7] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomCenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[7] = 2
            }
            
        }
        
        self.winning()
    }
    
    //bottom right button code
    @IBAction func BottomRightButton(sender: UIButton) {
        
        if button[8] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                button[8] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
                button[8] = 2
            }
            
        }
        
        self.winning()
    }
    
    
    //determine if the placement is a win
    func winning() {
        
        var a:Int
        var b:Int
        var c:Int
        
        var buttcheck1:Int = 0
        var buttcheck2:Int = 1
        var buttcheck3:Int = 2
        var buttIncrement:Int = 3
        var buttvaluetype:Int = 1
        
        if gameplay == "True" {
            
            for a = 1;a <= 2; ++a {
            
            for b = 1; b <= 2; ++b {
                
                for c = 1; c <= 3; ++c {
                    
                    if (button[buttcheck1] == buttvaluetype) && (button[buttcheck2] == buttvaluetype) && (button[buttcheck3] == buttvaluetype) {
                        
                        println("You win")
                        gameplay = "False"
                        button = [3,3,3,3,3,3,3,3,3]
                        break
                    }
                    
                    buttcheck1 = buttcheck1 + buttIncrement
                    buttcheck2 = buttcheck2 + buttIncrement
                    buttcheck3 = buttcheck3 + buttIncrement
                    
                }//end of third for loop
                
                buttcheck1 = 0
                buttcheck2 = 3
                buttcheck3 = 6
                buttIncrement = 1
                
            }//end of second for loop
                
                if (button[0] == buttvaluetype) && (button[4] == buttvaluetype) && (button[8] == buttvaluetype) {
                    println("You win negative diagonal")
                    gameplay = "False"
                    button = [3,3,3,3,3,3,3,3,3]
                    break
                }
                if (button[2] == buttvaluetype) && (button[4] == buttvaluetype) && (button[6] == buttvaluetype) {
                    println("You win positive diagonal")
                    gameplay = "False"
                    button = [3,3,3,3,3,3,3,3,3]
                    break
                }
                
                buttcheck1 = 0
                buttcheck2 = 1
                buttcheck3 = 2
                buttIncrement = 3
                buttvaluetype = 2
                
            }//end of first loop
            
        }//end of gameplay if statement
        
    }//end of winning function
    
    
}//end of main class








