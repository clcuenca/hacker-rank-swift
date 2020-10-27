/// Hacker Rank - Algorithms - Warmup
/// Plus Minus
/// Author: Carlos L. Cuenca
/// Date: 10/26/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func plusMinus(array: [Int]) -> Void {

	var positiveCount = 0
	var negativeCount = 0
	var zeroCount     = 0

	for number in array {

		if number > 0 { positiveCount += 1 }
		if number < 0 { negativeCount += 1 }
		if number == 0 { zeroCount += 1 }

	}

	print(String(format: "%.6f", (Float(positiveCount) / Float(array.count) )))
	print(String(format: "%.6f", (Float(negativeCount) / Float(array.count) )))
	print(String(format: "%.6f", (Float(zeroCount)     / Float(array.count) )))

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let values : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

	print(plusMinus(array: values))

	inputCount -= 1

}