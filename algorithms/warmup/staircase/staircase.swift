/// Hacker Rank - Algorithms - Warmup
/// Staircase
/// Author: Carlos L. Cuenca
/// Date: 10/26/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func staircase(number: Int) -> Void {

    var stairString = ""
    
    for line in 1...number {

        for index in 0...number - line {

            if index > 0 { stairString += " " }

        }

        for index in 0...line - 1 {

            stairString += "#"

        }

        if(line < number) {

            stairString += "\n"

        }

    }

    print(stairString)

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let number = Int(readLine()!)!

	staircase(number: number)

	inputCount -= 1

}
