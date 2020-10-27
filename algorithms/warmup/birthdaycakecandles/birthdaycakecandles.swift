/// Hacker Rank - Algorithms - Warmup
/// Birthday Cake Candles
/// Author: Carlos L. Cuenca
/// Date: 10/27/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func birthdayCakeCandles(candles: [Int]) -> Int {

	var maximum      = -4000000000
	var maximumCount = 0

	for candle in candles {

		if(candle > maximum) {

			maximum = candle

			maximumCount = 1

		}

		else if(candle == maximum){ maximumCount += 1 }

	}

	return maximumCount

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let values = readLine()!.split(separator: " ").map{ Int(String($0))! }

	print(birthdayCakeCandles(candles: values))

	inputCount -= 1

}