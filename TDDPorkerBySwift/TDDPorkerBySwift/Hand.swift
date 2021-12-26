//
//  Hand.swift
//  TDDPorkerBySwift
//
//  Created by Tomohiko Aono on 2021/12/26.
//

import Foundation

struct Hand{
    let cards: [Card]
    
    var isPair: Bool{
        return cards[0].rank == cards[1].rank
    }
    
    var isFlush: Bool{
        return cards[0].suit == cards[1].suit
    }
}
