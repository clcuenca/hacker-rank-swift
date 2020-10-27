/// Hacker Rank - Algorithms - Warmup
/// Diagonal Difference
/// Author: Carlos L. Cuenca
/// Date: 10/26/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func diagonalDifference(matrix: [[Int]]) -> Int {

	var leftDiagonal  = 0
	var rightDiagonal = 0

	for index in 0...matrix.count - 1 {

		leftDiagonal += matrix[index][index]

	}

	for index in 0...matrix.count - 1 {

		rightDiagonal += matrix[index][matrix.count - index - 1]

	}

	return abs(leftDiagonal - rightDiagonal)

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let matrixSize = Int(readLine()!)!
	var matrix : [[Int]] = [[Int]]()

	for line in 0...matrixSize - 1 {

		let values = readLine()!.split(separator: " ").map{ Int(String($0))! }

		matrix.append(values)

	}

	print(diagonalDifference(matrix: matrix))
	
	inputCount -= 1

}
