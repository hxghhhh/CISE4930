//
//  GameBoard.swift
//  TicTacToe_HAM
//
//  Created by Hugh A. Miles on 9/14/15.
//  Copyright © 2015 HAM. All rights reserved.
//

import Foundation
import Foundation

import UIKit

class GameBoard: UIViewController {
    
    //Positions going down >> left to right
    
    //FirstRow
    @IBOutlet var Pos0: UIImageView!
    @IBOutlet var Pos1: UIImageView!
    @IBOutlet var Pos2: UIImageView!
    
    //SecondRow
    @IBOutlet var Pos3: UIImageView!
    @IBOutlet var Pos4: UIImageView!
    @IBOutlet var Pos5: UIImageView!

    //ThirdRow
    @IBOutlet var Pos6: UIImageView!
    @IBOutlet var Pos7: UIImageView!
    @IBOutlet var Pos8: UIImageView!
    
    var currentUser:String = "player1"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var circle : UIImage = UIImage(named:"tic-tac-toe-O")!
        //pos0.image = circle
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func userPlacedPiece(sender: AnyObject) {
        let cross : UIImage = UIImage(named:"tic-tac-toe-X")!
        let circle : UIImage = UIImage(named:"tic-tac-toe-O")!
        var playerPiece : UIImage
        
        if (currentUser == "player1"){
            playerPiece = cross // set piece = X (Player1)
            self.currentUser = "player2"    //tgl user
        }
        else {
            playerPiece = circle //set piece = O (Player2)
            self.currentUser = "player1"    //tgl user
        }

        switch(sender.tag){ // parse which button has been touched
        case 0:
            print("Button 0 Pressed")
            Pos0.image = playerPiece
        case 1:
            print("Button 1 Pressed")
            Pos1.image = playerPiece
        case 2:
            print("Button 2 Pressed")
            Pos2.image = playerPiece
        case 3:
            print("Button 3 Pressed")
            Pos3.image = playerPiece
        case 4:
            print("Button 4 Pressed")
            Pos4.image = playerPiece
        case 5:
            print("Button 5 Pressed")
            Pos5.image = playerPiece
        case 6:
            print("Button 6 Pressed")
            Pos6.image = playerPiece
        case 7:
            print("Button 7 Pressed")
            Pos7.image = playerPiece
        case 8:
            print("Button 8 Pressed")
            Pos8.image = playerPiece
        default:
            print("Error in userPlacedPiece")
        }
    }
}