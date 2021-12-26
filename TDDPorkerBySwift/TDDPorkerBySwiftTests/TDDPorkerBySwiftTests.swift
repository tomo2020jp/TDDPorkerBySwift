//
//  TDDPorkerBySwiftTests.swift
//  TDDPorkerBySwiftTests
//
//  Created by Tomohiko Aono on 2021/12/26.
//

import XCTest
@testable import TDDPorkerBySwift

class TDDPorkerBySwiftTests: XCTestCase {

    func testInitializeCard(){
        var card: Card
        
        card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .three)
        
        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.suit, .spade)
        XCTAssertEqual(card.rank, .jack)
    }
    
    func testCardNotation(){
        let card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.notation , "3♥")
    }

}
