//
//  DestinyNumbersTests.swift
//  DestinyNumbersTests
//
//  Created by burnsoft on 11/19/26.
//  Copyright © 2026 burnsoft. All rights reserved.
//

import Testing
@testable import DestinyNumbers

struct DestinyNumbersTests {

    let dn = DestinyNumbers()

    // MARK: getNumber

    @Test("Each letter maps to its numerology value", arguments: [
        ("A", 1), ("J", 1), ("S", 1),
        ("B", 2), ("K", 2), ("T", 2),
        ("C", 3), ("L", 3), ("U", 3),
        ("D", 4), ("M", 4), ("V", 4),
        ("E", 5), ("N", 5), ("W", 5),
        ("F", 6), ("O", 6), ("X", 6),
        ("G", 7), ("P", 7), ("Y", 7),
        ("H", 8), ("Q", 8), ("Z", 8),
        ("I", 9), ("R", 9)
    ])
    func letterValues(letter: String, expected: Int) {
        #expect(dn.getNumber(letter) == expected)
    }

    @Test("Lowercase letters match their uppercase values")
    func lowercaseLetters() {
        for scalar in UnicodeScalar("a").value...UnicodeScalar("z").value {
            let lower = String(Character(UnicodeScalar(scalar)!))
            #expect(dn.getNumber(lower) == dn.getNumber(lower.uppercased()))
        }
    }

    @Test("Non-letter input returns 0", arguments: ["", "1", " ", "!", "-"])
    func nonLetters(input: String) {
        #expect(dn.getNumber(input) == 0)
    }

    @Test("Multi-character strings currently return 0")
    func multiCharacterString() {
        // getNumber only evaluates single letters; whole names are not summed.
        #expect(dn.getNumber("Joe") == 0)
    }

    // MARK: getMeaning

    @Test("Known destiny numbers have a dedicated meaning", arguments: 1...40)
    func knownMeanings(number: Int) {
        let meaning = dn.getMeaning(number)
        #expect(!meaning.isEmpty)
        #expect(!meaning.hasPrefix("Sorry"))
    }

    @Test("Unknown destiny numbers return the fallback message", arguments: [0, 41, 100, -1])
    func unknownMeanings(number: Int) {
        #expect(dn.getMeaning(number) == "Sorry, we currently do not have anything listed for \(number) at this time.")
    }

    @Test("Master numbers 11 and 22 have their special meanings")
    func masterNumbers() {
        #expect(dn.getMeaning(11).contains("psychic abilities"))
        #expect(dn.getMeaning(22).contains("Master Builder"))
    }

    // MARK: calcLetters

    @Test("calcLetters sums the first, middle and last name values")
    func calcLettersSumsInitials() {
        let dn = DestinyNumbers()
        dn.firstName = "J"   // 1
        dn.middleName = "R"  // 9
        dn.lastName = "M"    // 4
        #expect(dn.calcLetters() == 14)
    }

    @Test("calcLetters returns 0 for empty names")
    func calcLettersEmpty() {
        #expect(DestinyNumbers().calcLetters() == 0)
    }
}
