//
//  TDDPorkerBySwiftTests.swift
//  TDDPorkerBySwiftTests
//
//  Created by Tomohiko Aono on 2021/12/26.
//

import XCTest
@testable import TDDPorkerBySwift

class TDDPorkerBySwiftTests: XCTestCase {
    
    func testCardNotation(){
        var card: Card
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation , "3♥")
        
        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "J♠︎")
    }

    func testHasSameSuit(){
        var card1: Card
        var card2: Card
        
        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameSuit(card2))
        
        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameSuit(card2))
    }
    
    func testHasSameRank(){
        var card1: Card
        var card2: Card
        
        card1 = Card(rank: .two, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameRank(card2))
        
        card1 = Card(rank: .two, suit: .club)
        card2 = Card(rank: .king, suit: .diamond)
        XCTAssertFalse(card1.hasSameRank(card2))
    }
    
    func testCardEqual(){
        XCTAssertEqual(
            Card(rank: .jack, suit: .club),
            Card(rank: .jack, suit: .club))
        
        XCTAssertNotEqual(
            Card(rank: .queen, suit: .club),
            Card(rank: .jack, suit: .diamond))
        
        XCTAssertNotEqual(
            Card(rank: .jack, suit: .diamond),
            Card(rank: .jack, suit: .club))
        
        XCTAssertNotEqual(
            Card(rank: .queen, suit: .club),
            Card(rank: .jack, suit: .club))
    }
    
    func testisPair(){
        let card1 = Card(rank: .king, suit: .spade)
        let card2 = Card(rank: .king, suit: .heart)
        let hand = Hand(cards: [card1, card2])
        XCTAssertTrue(hand.isPair)
    }
}
