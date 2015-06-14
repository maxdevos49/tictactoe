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
        
        
        //variables to be placed into button arrays and manipulated to test each position
        
        //button variable check number 1
        var a:Int = 0
        //button variable check number 2
        var b:Int = 1
        //button variabel check number 3
        var c:Int = 2
        
        //variable that is added to manipulate the section that is checked
        var d:Int = 3
        
        //variable used to determine if x's or o's are checked
        var e:Int = 1
        
        //for loops variables
        var gridcheck:Int
        var directioncheck:Int
        var lettercheck:Int
        
        if gameplay == "True" {
            
            //check for both x's and o's
            for lettercheck = 1; lettercheck < 4; ++lettercheck {
                
                //decide which direction to check -horizontal = 1  -vertical = 2
                for directioncheck = 1; directioncheck < 3; ++directioncheck {
                    
                    //decide to check which grid section to check
                    for gridcheck = 1; gridcheck < 4; ++gridcheck {
                        
                        //check if a specific section has won
                        if (button[a] == e) && (button[b] == e) && (button[c] == e) {
                            
                            //add command to draw line here
                            
                            //debug text to be printed in console when no line is present
                            println("Winning for \(e) ")
                            println(a)
                            println(b)
                            println(c)
                            
                            //set gameplay to false so it can not be checked for a win any longer
                            gameplay = "False"
                            
                            //set button values to 3 so they can not be pressed
                            button = [3,3,3,3,3,3,3,3,3]
                            
                            //break the code so it stops executing after a win is found
                            break
                        }
                        // add 3 to each variable for the next check
                        a = a + d
                        b = b + d
                        c = c + d
                        
                    }
                    
                    //change variables for vertical check
                    a = 0
                    b = 3
                    c = 6
                    d = 1
                    
                }
                e = 2
                
                
                //diagonal check
                
                if ((button[0] == e) && (button[4] == e) && (button[8] == e)) ?? ((button[2] == e) && (button[4] == e) && (button[6] == e)) {
                    
                    println("Winning diagonal for \(e)")
                    gameplay = "False"
                    button = [3,3,3,3,3,3,3,3,3]
                    
                }
                
            }

        }
        e = 2
    }

}








