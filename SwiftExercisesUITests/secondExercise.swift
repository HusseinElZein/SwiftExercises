import XCTest


func disemvowel(_ s: String) -> String {

  var newS = s.replacingOccurrences(of: "A", with: "")
  newS = newS.replacingOccurrences(of: "a", with: "")
  newS = newS.replacingOccurrences(of: "E", with: "")
  newS = newS.replacingOccurrences(of: "e", with: "")
  newS = newS.replacingOccurrences(of: "I", with: "")
  newS = newS.replacingOccurrences(of: "i", with: "")
  newS = newS.replacingOccurrences(of: "O", with: "")
  newS = newS.replacingOccurrences(of: "o", with: "")
  newS = newS.replacingOccurrences(of: "U", with: "")
  newS = newS.replacingOccurrences(of: "u", with: "")
  return newS
}

class SecondExercise: XCTestCase {

  func testbasicTests() {
    XCTAssertEqual("Ths wbst s fr lsrs LL!", disemvowel("aaaaThis website is for losers LOL!"))
  }

  func testbasictest2(){
    XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
  }
  
  func testbasictest3(){
    XCTAssertEqual("Wht r y,  cmmnst?", disemvowel("What are you, a communist?"))
  }
}
