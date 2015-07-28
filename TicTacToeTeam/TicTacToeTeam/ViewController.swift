//  test
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
    
    //Bottom area text variables
    @IBOutlet weak var p1MarkType: UILabel!
    @IBOutlet weak var p2MarkType: UILabel!
    @IBOutlet weak var playerTurnText: UILabel!
    @IBOutlet weak var p1ScoreText: UILabel!
    @IBOutlet weak var p2ScoreText: UILabel!
    
    
    //player turn variable
    var PlayerTurn = "Player1"
    var PlayerWinner:String = "Player1"
    var butTouched:String = "False"
    var p1ScoreIncrement:Int = 0
    var p2ScoreIncrement:Int = 0
    
    //game play variable that allows game to be started and stopped
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
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                
                self.TopLeftText.setTitle("X", forState: UIControlState.Normal)
                
                button[0] = 1
                
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopLeftText.setTitle("O", forState: UIControlState.Normal)
                
                button[0] = 2
            }

        }
        
        //change button variable so it cant be changed again
        
        self.winning()
    }
    
    //Top center button code
    @IBAction func TopCenterButton(sender: UIButton) {
        
        if button[1] == 0 {
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopCenterText.setTitle("X", forState: UIControlState.Normal)
                
                 button[1] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopCenterText.setTitle("O", forState: UIControlState.Normal)
                
                 button[1] = 2
            }
            
        }
       
        self.winning()
    }
    
    //Top right button code
    @IBAction func TopRightButton(sender: UIButton) {
        
        if button[2] == 0{
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopRightText.setTitle("X", forState: UIControlState.Normal)
                
                button[2] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopRightText.setTitle("O", forState: UIControlState.Normal)
                
                button[2] = 2
            }
            
            
        }
        
        self.winning()
    }
    
    //middle left button code
    @IBAction func MiddleLeftButton(sender: UIButton) {
        
        if button[3] == 0 {
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleLeftText.setTitle("X", forState: UIControlState.Normal)
                
                button[3] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleLeftText.setTitle("O", forState: UIControlState.Normal)
                
                button[3] = 2
            }

            
        }
        
        self.winning()
    }
    
    //center button code
    @IBAction func CenterButton(sender: UIButton) {
        
        if button[4] == 0 {
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.CenterText.setTitle("X", forState: UIControlState.Normal)
                
                button[4] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.CenterText.setTitle("O", forState: UIControlState.Normal)
                
                button[4] = 2
            }
            
            
        }
        
        self.winning()
    }
    
    //middle right button code
    @IBAction func MiddleRightButton(sender: UIButton) {
        
        if button[5] == 0 {
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleRightText.setTitle("X", forState: UIControlState.Normal)
                
                button[5] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleRightText.setTitle("O", forState: UIControlState.Normal)
                
                button[5] = 2
            }
        }
        
        self.winning()
    }
    
    //bottom left button code
    @IBAction func BottomLeftButton(sender: UIButton) {
        
        if button[6] == 0{
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{
                self.BottomLeftText.setTitle("X", forState: UIControlState.Normal)
                
                button[6] = 1
            }
            else if PlayerTurn == "Player2"{
                self.BottomLeftText.setTitle("O", forState: UIControlState.Normal)
                
                button[6] = 2
            }
            
        }
        
        self.winning()
    }
    
    //bottom center button code
    @IBAction func BottomCenterButton(sender: UIButton) {
        
        if button[7] == 0 {
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomCenterText.setTitle("X", forState: UIControlState.Normal)
                
                button[7] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomCenterText.setTitle("O", forState: UIControlState.Normal)
                
                button[7] = 2
            }
            
        }
        
        self.winning()
    }
    
    //bottom right button code
    @IBAction func BottomRightButton(sender: UIButton) {
        
        if button[8] == 0 {
            
            butTouched = "True"
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomRightText.setTitle("X", forState: UIControlState.Normal)
                
                
                button[8] = 1
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomRightText.setTitle("O", forState: UIControlState.Normal)
                
                
                button[8] = 2
            }
            
        }
        
        self.winning()
    }
    
    
    //determine if the placement is a win
    func winning() {
        
        if gameplay == "True" {
            
            if butTouched == "True" {
                butTouched = "False"
                
                //fill me in
                var a:Int
                var b:Int
                var c:Int
                
                var buttcheck1:Int = 0
                var buttcheck2:Int = 1
                var buttcheck3:Int = 2
                var buttIncrement:Int = 3
                var buttvaluetype:Int = 1
                
                
                if PlayerTurn == "Player1" {
                    
                    if PlayerWinner == "Player1" {
                        self.playerTurnText.text = ">>>"
                        
                    }else if PlayerWinner == "Player2"{
                        self.playerTurnText.text = "<<<"
                    }
                    
                    PlayerTurn = "Player2"
                    
                }else if PlayerTurn == "Player2" {
                    
                    if PlayerWinner == "Player1" {
                        self.playerTurnText.text = "<<<"
                        
                    }else if PlayerWinner == "Player2"{
                        self.playerTurnText.text = ">>>"
                    }
                    
                    PlayerTurn = "Player1"
                    
                }
                
                for a = 1;a <= 2; ++a {
                    
                    for b = 1; b <= 2; ++b {
                        
                        for c = 1; c <= 3; ++c {
                            
                            if (button[buttcheck1] == buttvaluetype) && (button[buttcheck2] == buttvaluetype) && (button[buttcheck3] == buttvaluetype) {
                                
                                println("You win")
                                gameplay = "False"
                                button = [3,3,3,3,3,3,3,3,3]
                                
                                //check whos turn it is in this mess
                                if PlayerTurn == "Player1" {
                                    
                                    //see who was the last winner
                                    if PlayerWinner == "Player1" {
                                        
                                        PlayerWinner = "Player2"
                                        
                                    //see who was the last winner
                                    }else if PlayerWinner == "Player2"{

                                        PlayerWinner = "Player1"
                                    }
                                
                                    
                                    //check whos turn it is
                                }else if PlayerTurn == "Player2" {
                                    
                                    //see who was the last winner
                                    if PlayerWinner == "Player1" {
                                        
                                        PlayerWinner = "Player1"
                                        
                                    //see who was the last winner
                                    }else if PlayerWinner == "Player2"{

                                        PlayerWinner = "Player2"
                                        
                                    }
                                
                                }
                                scoreModifier()
                                println(PlayerWinner)
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
                        
                        //check whos turn it is in this mess
                        if PlayerTurn == "Player1" {
                            
                            //see who was the last winner
                            if PlayerWinner == "Player1" {
                                
                                PlayerWinner = "Player2"
                                
                                //see who was the last winner
                            }else if PlayerWinner == "Player2"{
                                
                                PlayerWinner = "Player1"
                            }
                            
                            
                            //check whos turn it is
                        }else if PlayerTurn == "Player2" {
                            
                            //see who was the last winner
                            if PlayerWinner == "Player1" {
                                
                                PlayerWinner = "Player1"
                                
                                //see who was the last winner
                            }else if PlayerWinner == "Player2"{
                                
                                PlayerWinner = "Player2"
                                
                            }
                            
                        }
                        scoreModifier()
                        println(PlayerWinner)
                        break
                    }
                    if (button[2] == buttvaluetype) && (button[4] == buttvaluetype) && (button[6] == buttvaluetype) {
                        println("You win positive diagonal")
                        gameplay = "False"
                        button = [3,3,3,3,3,3,3,3,3]
                        
                        //check whos turn it is in this mess
                        if PlayerTurn == "Player1" {
                            
                            //see who was the last winner
                            if PlayerWinner == "Player1" {
                                
                                PlayerWinner = "Player2"
                                
                                //see who was the last winner
                            }else if PlayerWinner == "Player2"{
                                
                                PlayerWinner = "Player1"
                            }
                            
                            
                            //check whos turn it is
                        }else if PlayerTurn == "Player2" {
                            
                            //see who was the last winner
                            if PlayerWinner == "Player1" {
                                
                                PlayerWinner = "Player1"
                                
                                //see who was the last winner
                            }else if PlayerWinner == "Player2"{
                                
                                PlayerWinner = "Player2"
                                
                            }
                            
                        }
                        scoreModifier()
                        println(PlayerWinner)
                        break
                    }
                    
                    buttcheck1 = 0
                    buttcheck2 = 1
                    buttcheck3 = 2
                    buttIncrement = 3
                    buttvaluetype = 2
                    
                }//end of first loop
                
                
                //change the player turn indicator
                
                
            }
            
        }//end of gameplay if statement
        
    }//end of winning function
    
    func scoreModifier() {
        
        if PlayerWinner == "Player1" {
            
            p1ScoreIncrement = p1ScoreIncrement + 1
            self.p1ScoreText.text = String(p1ScoreIncrement)
            
        }else if PlayerWinner == "Player2" {
            
            p2ScoreIncrement = p2ScoreIncrement + 1
            self.p2ScoreText.text = String(p2ScoreIncrement)
            
        }
    }
    
    //Reset sequence
    @IBAction func ResetButton(sender: UIButton) {
        
        if PlayerWinner == "Player2" {
            
            self.p1MarkType.text = "O's"
            self.p2MarkType.text = "X's"
            
            self.playerTurnText.text = ">>>"
            //rightWin = "True"
            
            
    
        
        }else if PlayerWinner == "Player1"{
            
            self.p1MarkType.text = "X's"
            self.p2MarkType.text = "O's"
            
            self.playerTurnText.text = "<<<"
            //leftWin = "True"
        }
        
        PlayerTurn = "Player1"
        
        //reset button values
        button = [0,0,0,0,0,0,0,0,0]
        

        
        //reset button text to none/null
        self.TopLeftText.setTitle("", forState: UIControlState.Normal)
        self.TopCenterText.setTitle("", forState: UIControlState.Normal)
        self.TopRightText.setTitle("", forState: UIControlState.Normal)
        self.MiddleLeftText.setTitle("", forState: UIControlState.Normal)
        self.CenterText.setTitle("", forState: UIControlState.Normal)
        self.MiddleRightText.setTitle("", forState: UIControlState.Normal)
        self.BottomLeftText.setTitle("", forState: UIControlState.Normal)
        self.BottomCenterText.setTitle("", forState: UIControlState.Normal)
        self.BottomRightText.setTitle("", forState: UIControlState.Normal)
        
        //set gameplay to true
        gameplay = "True"
        
    }
    
    
    
}//end of main class








