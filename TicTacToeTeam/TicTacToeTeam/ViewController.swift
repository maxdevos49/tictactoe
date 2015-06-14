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
                
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }

        }
        
        //change button variable so it cant be changed again
        button[0] = 1
        self.winning()
    }
    
    //Top center button code
    @IBAction func TopCenterButton(sender: UIButton) {
        
        if button[1] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopCenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopCenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            
        }
        button[1] = 1
        self.winning()
    }
    
    //Top right button code
    @IBAction func TopRightButton(sender: UIButton) {
        
        if button[2] == 0{
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            
            
        }
        button[2] = 1
        self.winning()
    }
    
    //middle left button code
    @IBAction func MiddleLeftButton(sender: UIButton) {
        
        if button[3] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }

            
        }
        button[3] = 1
        self.winning()
    }
    
    //center button code
    @IBAction func CenterButton(sender: UIButton) {
        
        if button[4] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.CenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.CenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            
            
        }
        button[4] = 1
        self.winning()
    }
    
    //middle right button code
    @IBAction func MiddleRightButton(sender: UIButton) {
        
        if button[5] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
        }
        button[5] = 1
        self.winning()
    }
    
    //bottom left button code
    @IBAction func BottomLeftButton(sender: UIButton) {
        
        if button[6] == 0{
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{
                self.BottomLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{
                self.BottomLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            
        }
        button[6] = 1
        self.winning()
    }
    
    //bottom center button code
    @IBAction func BottomCenterButton(sender: UIButton) {
        
        if button[7] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomCenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomCenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            
        }
        button[7] = 1
        self.winning()
    }
    
    //bottom right button code
    @IBAction func BottomRightButton(sender: UIButton) {
        
        if button[8] == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            
        }
        button[8] = 1
        self.winning()
    }
    
    
    //determine if the placement is a win
    func winning() {
        
        
        //variables to be placed into button arrays and manipulated to test each position
        var a = 0
        var b = 1
        var c = 2
        var gridcheck = 1
        
        
        if gameplay == "True" {
            
            //horizontal check for win
            
            for gridcheck = 1; gridcheck < 4; ++gridcheck {
                
                if (button[a] == 1) && (button[b] == 1) && (button[c] == 1) {
                    
                    //add command to draw line here
                    println("Winning horizontal")
                    println(a)
                    println(b)
                    println(c)
                    gameplay = "False"
                    button = [1,1,1,1,1,1,1,1,1]
                    break
                }
                // add 3 to each variable for the next check
                a = a + 3
                b = b + 3
                c = c + 3
                
            }
        }
        
        
        //vertical check
        a = 0
        b = 3
        c = 6
        gridcheck = 1
        if gameplay == "True" {
            
            for gridcheck = 1; gridcheck < 4; ++gridcheck {
                
                if (button[a] == 1) && (button[b] == 1) && (button[c] == 1) {
                    
                    println("Winning vertical")
                    println(a)
                    println(b)
                    println(c)
                    gameplay = "False"
                    button = [1,1,1,1,1,1,1,1,1]
                    break
                    
                }
                
                a = a + 1
                b = b + 1
                c = c + 1
            }
            //diagonal check
            
            if ((button[0] == 1) && (button[4] == 1) && (button[8] == 1)) ?? ((button[2] == 1) && (button[4] == 1) && (button[6] == 1)) {
                
                println("Winning diagonal")
                gameplay = "False"
                button = [1,1,1,1,1,1,1,1,1]
                
                
            }
        }
        
    }
}








