//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController {
    func romanToInt(_ s: String) -> Int {
        let charss = s.map { $0 }
        let romanToArabic:[Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var summ = 0

        for i in 0..<charss.count {
            guard let element = romanToArabic[charss[i]] else {break}
            guard let nextElement = i+1<charss.count ? romanToArabic[charss[i+1]] : 0 else { break }
            if 0 < nextElement && nextElement > element
            {
                summ -= element
            }
            else
            {
                summ += element
            }
        }

        return summ
    }
}

let vc = MyViewController()
print(vc.romanToInt("III"))
print(vc.romanToInt("LVIII"))
print(vc.romanToInt("MCMXCIV"))
