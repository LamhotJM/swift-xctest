class PairSum {
    
func findPairSum(input: [Int], sum: Int) -> [Int] {
    
   for i in 0..<input.count {
        let firstNum = input[i];
        for j in i+1..<input.count {
            let sencondNum = input[j];
            if ((firstNum + sencondNum) == sum) {
                return [input[i],input[j]]
            }
       }
    }
    return []
    
  }

}

import XCTest

class PairSumTests: XCTestCase {
    
    override func setUp() {
           super.setUp()
       }
       override func tearDown() {
           super.tearDown()
       }

    
    func testwithNull() {
        let ps = PairSum ()
        var someInts = [Int]()
        someInts  = ps.findPairSum(input: [], sum :0)
        XCTAssertEqual(someInts, [])
    }
    
    func testIndicesOfMoreThanOnePossibility() {
        let ps = PairSum ()
        var someInts = [Int]()
        someInts  = ps.findPairSum(input: [1, 5, 4, 2, 7, 11, 15], sum :9)
        XCTAssertEqual(someInts, [5,4])
    }
    
    func testNegativeNumber() {
           let ps = PairSum ()
           var someInts = [Int]()
           someInts  = ps.findPairSum(input: [1, -4, 2, 7, 11, 15], sum :11)
           XCTAssertEqual(someInts, [-4,15])
       }
    
    func testwithFive() {
        let ps = PairSum ()
        var someInts = [Int]()
        someInts  = ps.findPairSum(input: [1,2,5,3], sum :5)
        XCTAssertEqual(someInts, [2,3])
    }
    
    func testwithTwentyEight() {
          let ps = PairSum ()
          var someInts = [Int]()
          someInts  = ps.findPairSum(input: [15,95,41,11,13,1], sum:28)
          XCTAssertEqual(someInts, [15,13])
   }
}

PairSumTests.defaultTestSuite.run()
