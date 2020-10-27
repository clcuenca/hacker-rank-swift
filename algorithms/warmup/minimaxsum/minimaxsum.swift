/// Hacker Rank - Algorithms - Warmup
/// Mini Max Sum
/// Author: Carlos L. Cuenca
/// Date: 10/27/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func miniMaxSum(array: [Int64]) -> Void {

	var minimumSum : Int64 = 4000000000
	var maximumSum : Int64 = -4000000000
	let n : Int64 = Int64(array.count)
	let choose : Int64 = Int64(4)

	var combinations: [Int64] = [Int64](repeating: 0, count: Int(choose) + 2)

	for j in 0...choose - 1 { combinations[Int(j)] = j }

	combinations[Int(choose)] = n
	combinations[Int(choose) + 1] = 0

	var j : Int64 = 0

	while j < choose {

		var sum : Int64 = 0

		// Visit the combinations

		for index in 0...choose - 1 { sum += array[Int(combinations[Int(index)])] }

		if sum < minimumSum { minimumSum = sum }
		if sum > maximumSum { maximumSum = sum }

		j = 0

		while combinations[Int(j)] + 1 == combinations[Int(j) + 1] {

			combinations[Int(j)] = j

			j += 1

		}

		combinations[Int(j)] += 1

	}

	print(String(minimumSum) + " " + String(maximumSum))

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let values : [Int64] = readLine()!.split(separator: " ").map{ Int64(String($0))! }

	miniMaxSum(array: values)

	inputCount -= 1

}