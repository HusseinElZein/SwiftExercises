//
//  SwiftExercisesUITestsLaunchTests.swift
//  SwiftExercisesUITests
//
//  Created by Hussein on 06/12/2023.
//

import XCTest

func evaluate(good: String, vsEvil: String) -> String {

  print("igang")

  var valuesOfGood = 0
  var valuesOfEvil = 0

  var goodIndex = 0
  var evilIndex = 0


  let strenghtsOfGood = [1, 2, 3, 3, 4, 10]
  let strenghtsOfEvil = [1, 2, 2, 2, 3, 5, 10]

  let goodCounts = good.components(separatedBy: " ")
  let evilCounts = vsEvil.components(separatedBy: " ")

  for count in goodCounts {
    if let intValue = Int(count) {
      valuesOfGood += intValue * strenghtsOfGood[goodIndex]
      goodIndex += 1
    }
  }

  for count in evilCounts {
    if let intValue = Int(count) {
      valuesOfEvil += intValue * strenghtsOfEvil[evilIndex]
      evilIndex += 1
    }
  }

  if valuesOfEvil > valuesOfGood{
    return "Battle Result: Evil eradicates all trace of Good"
  }else if valuesOfGood > valuesOfEvil{
    return "Battle Result: Good triumphs over Evil"
  }else{ //Tie
    return "Battle Result: No victor on this battle field"
  }
}

class SolutionTest: XCTestCase {
    func testEvilShouldWin() {
      XCTAssertEqual("Battle Result: Evil eradicates all trace of Good", evaluate(good: "1 1 1 1 1 1", vsEvil: "1 1 1 1 1 1 1"))
    }

    func testGoodShouldTriumph() {
      XCTAssertEqual("Battle Result: Good triumphs over Evil", evaluate(good: "0 0 0 0 0 10", vsEvil: "0 1 1 1 1 0 0"))
    }

    func testShouldBeATie() {
      XCTAssertEqual("Battle Result: No victor on this battle field", evaluate(good: "1 0 0 0 0 0", vsEvil: "1 0 0 0 0 0 0"))
    }
}
