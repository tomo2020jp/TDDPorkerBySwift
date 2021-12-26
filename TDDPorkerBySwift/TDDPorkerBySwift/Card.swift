//
//  Card.swift
//  TDDPorkerBySwift
//
//  Created by Tomohiko Aono on 2021/12/26.
//

import Foundation

struct Card{
    enum Suit: String{
        case heart = "♥"
        case spade = "♠︎"
        case club = "♣︎"
        case diamond = "♦︎"
    }
    
    enum Rank: String{
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case ten = "10"
        case jack = "J"
        case queen = "Q"
        case king = "K"
    }
    
    let rank: Rank
    let suit: Suit
    
    var notation: String{
        return  rank.rawValue + suit.rawValue
    }
}
