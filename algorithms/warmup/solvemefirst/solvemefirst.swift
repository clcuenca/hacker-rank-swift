/// Hacker Rank - Algorithms - Warmup
/// Solve Me First
/// Author: Carlos L. Cuenca
/// Date: 10/26/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func solveMeFirst(a: Int, b: Int) -> Int {

	return a + b

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let values = readLine()!.split(separator: " ").map{ Int(String($0)) }

	print(solveMeFirst(a: values[0]!, b: values[1]!))

	inputCount -= 1

}