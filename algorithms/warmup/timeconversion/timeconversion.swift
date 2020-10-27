/// Hacker Rank - Algorithms - Warmup
/// Time Conversion
/// Author: Carlos L. Cuenca
/// Date: 10/27/2020

/// -------
/// Imports

import Foundation;

/// ------------------------
/// Function Implementations

func timeConversion(time: String) -> String {

	let hourStart   = time.index(time.startIndex, offsetBy: 0)
	let hourEnd     = time.index(time.startIndex, offsetBy: 1)
	let minuteStart = time.index(time.startIndex, offsetBy: 3)
	let minuteEnd   = time.index(time.startIndex, offsetBy: 4)
	let secondStart = time.index(time.startIndex, offsetBy: 6)
	let secondEnd   = time.index(time.startIndex, offsetBy: 7)
	let periodStart = time.index(time.startIndex, offsetBy: 8)
	let periodEnd   = time.index(time.startIndex, offsetBy: 9)

	let hourRange   = hourStart...hourEnd
	let minuteRange = minuteStart...minuteEnd
	let secondRange = secondStart...secondEnd
	let periodRange = periodStart...periodEnd

	var hours      = Int(String(time[hourRange]))!
	let minutes    = Int(String(time[minuteRange]))!
	let seconds    = Int(String(time[secondRange]))!
	let timePeriod = String(time[periodRange])

	var newTime = ""

    hours = hours % 12

    if timePeriod == "PM" { hours += 12 }

    if hours < 10 { 

    	newTime += ("0" + String(hours))

    } else {

        newTime += String(hours)

    }

    newTime += ":"

    if minutes < 10 {

        newTime += ("0" + String(minutes))

    } else {

        newTime += String(minutes)

    }

    newTime += ":"

    if seconds < 10 {

        newTime += ("0" + String(seconds))

    } else {

        newTime += String(seconds)

    }

    return newTime

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

	let time = String(readLine()!)

	print(timeConversion(time: time))

	inputCount -= 1

}