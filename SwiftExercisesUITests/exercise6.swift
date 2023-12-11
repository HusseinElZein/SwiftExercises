import XCTest
// XCTest Spec Example:
// TODO: replace with your own tests (TDD), these are just how-to examples to get you started


func findIt(_ seq: [Int]) -> Int {

  if seq

  for number in seq{
    if number % 2 != 0{
      return number
    }
  }
  return 0
}


class SolutionTest6: XCTestCase {

    func testbasicTests() {
      let testCases = [
        ([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5], 5),
        ([1,1,2,-2,5,2,4,4,-1,-2,5], -1),
        ([20,1,1,2,2,3,3,5,5,4,20,4,5], 5),
        ([10], 10),
        ([1,1,1,1,1,1,10,1,1,1,1], 10),
      ]
      for testCase in testCases {
        let actual = findIt(testCase.0);
        let expected = testCase.1;
        XCTAssertEqual(actual, expected, "\nInvalid answer for input array: \(testCase.0)\nExpected: \(expected)\nActual: \(actual)")
      }
    }
}
