/// Hacker Rank - Algorithms - Warmup
/// A Very Big Sum
/// Author: Carlos L. Cuenca
/// Date: 10/26/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func aVeryBigSum(array: [Int]) -> Int {

	var sum = 0

	for number in array {

		sum += number

	}

	return sum

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let values : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

	print(aVeryBigSum(array: values))

	inputCount -= 1

}