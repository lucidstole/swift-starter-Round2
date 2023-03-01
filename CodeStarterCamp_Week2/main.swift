//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var pickedNumbersSet: Set<Int> = Set<Int>()
    while pickedNumbersSet.count < 6 {
        let randomIndex: Int = Int.random(in: 1...45)
        pickedNumbersSet.insert(randomIndex)
    }
    return pickedNumbersSet
}

func checkLottoNumbers(mine myLottoNumbersArray: Array<Int>,
                       winners newLottoNumbersSet: Set<Int>) {
    let myLottoNumbersSet: Set<Int> = Set<Int>(myLottoNumbersArray)
    let matchedLottoNumbersString: String = newLottoNumbersSet.intersection(myLottoNumbersSet)
        .map({(value: Int) -> String in return String(value)})
        .joined(separator: ", ")

    if matchedLottoNumbersString.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchedLottoNumbersString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]
let newLottoNumbers: Set<Int> = generateLottoNumbers()

checkLottoNumbers(mine: myLottoNumbers, winners: newLottoNumbers)


