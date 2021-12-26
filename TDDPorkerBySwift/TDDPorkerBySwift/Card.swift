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
    }
    
    enum Rank{
        case three
    }
    
    let suit: Suit
    let rank: Rank
}
