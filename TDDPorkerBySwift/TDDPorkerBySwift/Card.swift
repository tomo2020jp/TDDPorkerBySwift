//
//  Card.swift
//  TDDPorkerBySwift
//
//  Created by Tomohiko Aono on 2021/12/26.
//

import Foundation

struct Card{
    enum Suit{
        case heart
        case spade
        case club
        case diamond
    }
    
    enum Rank{
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }
    
    let suit: Suit
    let rank: Rank
    
    var notation: String{
        return "3♥"
    }
}
