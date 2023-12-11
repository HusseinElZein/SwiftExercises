import XCTest

func sumOfIntegersInString(_ str: String) -> Int {
  var currentNumber = ""
  var sum = 0
  for char in str {
    if let number = Int(String(char)) {
      currentNumber += String(number)
    } else {
      if let intValue = Int(currentNumber) {
        sum += intValue
        currentNumber = ""
      }
    }
  }
  if let intValue = Int(currentNumber) {
    sum += intValue
  }
  return sum
}

class SolutionTest5: XCTestCase {
  func testExampleTests() {
    XCTAssertEqual(sumOfIntegersInString("12.4"), 16)
    XCTAssertEqual(sumOfIntegersInString("h3ll0w0rld"), 3)
    XCTAssertEqual(sumOfIntegersInString("2 + 3 = "), 5)
    XCTAssertEqual(sumOfIntegersInString("Our company made approximately 1 million in gross revenue last quarter."), 1)
    XCTAssertEqual(sumOfIntegersInString("The Great Depression lasted from 1929 to 1939."), 3868)
    XCTAssertEqual(sumOfIntegersInString("Dogs are our best friends."), 0)
    XCTAssertEqual(sumOfIntegersInString("C4t5 are 4m4z1ng."), 18)
    XCTAssertEqual(sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"), 3635)
  }
}
