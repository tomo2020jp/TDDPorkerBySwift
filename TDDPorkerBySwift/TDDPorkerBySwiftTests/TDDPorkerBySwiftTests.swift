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
        let card1 = Card(rank: .ace, suit: .heart)
        let card2 = Card(rank: .two, suit: .heart)
        
        XCTAssertTrue(card1.hasSameSuit(card2))
    }
}
