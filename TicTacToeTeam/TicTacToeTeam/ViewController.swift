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
    
    //variables to determine if a button was pressed
    var button1:Int = 0
    var button2:Int = 0
    var button3:Int = 0
    var button4:Int = 0
    var button5:Int = 0
    var button6:Int = 0
    var button7:Int = 0
    var button8:Int = 0
    var button9:Int = 0
    
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
        if button1 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                
                self.TopLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
                
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither players turn then a game end function will be called
                
            }
        }
        
        //change button variable so it cant be changed again
        button1 = 1
        
    }
    
    //Top center button code
    @IBAction func TopCenterButton(sender: UIButton) {
        
        if button2 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopCenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopCenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
        }
        button2 = 1
    }
    
    //Top right button code
    @IBAction func TopRightButton(sender: UIButton) {
        
        if button3 == 0{
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.TopRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.TopRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
            
        }
        button3 = 1
    }
    
    //middle left button code
    @IBAction func MiddleLeftButton(sender: UIButton) {
        
        if button4 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
            
        }
        button4 = 1
    }
    
    //center button code
    @IBAction func CenterButton(sender: UIButton) {
        
        if button5 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.CenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.CenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
            
        }
        button5 = 1
    }
    
    //middle right button code
    @IBAction func MiddleRightButton(sender: UIButton) {
        
        if button6 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.MiddleRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.MiddleRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
        }
        button6 = 1
    }
    
    //bottom left button code
    @IBAction func BottomLeftButton(sender: UIButton) {
        
        if button7 == 0{
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{
                self.BottomLeftText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{
                self.BottomLeftText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
        }
        button7 = 1
    }
    
    //bottom center button code
    @IBAction func BottomCenterButton(sender: UIButton) {
        
        if button8 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomCenterText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomCenterText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
        }
        button8 = 1
    }
    
    //bottom right button code
    @IBAction func BottomRightButton(sender: UIButton) {
        
        if button9 == 0 {
            
            //check if its x's or o's turn
            if PlayerTurn == "Player1"{//x is checked
                self.BottomRightText.setTitle("X", forState: UIControlState.Normal)
                
                PlayerTurn = "Player2"//player 2 turn is set
            }
            else if PlayerTurn == "Player2"{//o is checked
                self.BottomRightText.setTitle("O", forState: UIControlState.Normal)
                
                PlayerTurn =  "Player1"
            }
            else{//if it is neither turn then a game end function will be called
                
            }
            
            
        }
        button9 = 1
    }
}












