import XCTest


func sixToast(_ num: Int) -> Int {

  if(num == 6){
    return 0
  }
  else if(num > 6){
    return num - 6
  }else{//num < 6
    var difference = 0
    while(num + difference != 6){
      difference += 1
    }
    return difference
  }
}

class SolutionTest3: XCTestCase {
    static var allTests = [
        ("Sample Test Cases", testSample),
    ]

    func testSample() {
        XCTAssertEqual(sixToast(15), 9, "Incorrect answer for num = 15")
        XCTAssertEqual(sixToast(6), 0, "Incorrect answer for num = 6")
        XCTAssertEqual(sixToast(7), 1, "Incorrect answer for num = 7")
        XCTAssertEqual(sixToast(4), 2, "Incorrect answer for num = 4")
    }
}
