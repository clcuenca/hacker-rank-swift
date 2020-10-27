/// Hacker Rank - Algorithms - Warmup
/// Compare The Triplets
/// Author: Carlos L. Cuenca
/// Date: 10/26/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func solveMeFirst(alice: [Int], bob: [Int]) -> [Int] {

	var aliceCount = 0
	var bobCount   = 0

	for index in 0...2 {

		if(alice[index] > bob[index]) { aliceCount += 1 }
		if(alice[index] < bob[index]) { bobCount += 1 }

	}

	return [aliceCount, bobCount]

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let alice : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }
	let bob   : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

	print(solveMeFirst(alice: alice, bob: bob))

	inputCount -= 1

}