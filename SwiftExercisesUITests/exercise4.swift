import XCTest

func solution(_ str: String) -> [String] {
    var result: [String] = []
    var index = 0

    while index < str.count {
        let startIndex = str.index(str.startIndex, offsetBy: index)
        let endIndex = str.index(startIndex, offsetBy: 1)

        if index + 1 < str.count {
            let nextEndIndex = str.index(startIndex, offsetBy: 2)
            let pair = String(str[startIndex..<nextEndIndex])
            result.append(pair)
            index += 2
        } else {
            let pair = String(str[startIndex..<endIndex]) + "_"
            result.append(pair)
            break
        }
    }

    return result
}


class SolutionTest4: XCTestCase {

  func testsampleTests() {
    XCTAssertEqual(solution("asdfadsf"), ["as", "df", "ad", "sf"])
    XCTAssertEqual(solution("asdfads"), ["as", "df", "ad", "s_"])
    XCTAssertEqual(solution(""), [])
    XCTAssertEqual(solution("x"), ["x_"])
  }
}
