import UIKit

//bilo sta sto bih resavao FOR petljom, mogao bih u principu da resim rekurzivnom funkcijom, ali ukoliko imam potrebu da mnogo puta ponovim rekurziju to bi bilo lose sa stanovistva koriscenja memorije


func printNumbers(max: Int) {
    for x in 0...max {
        print(x)
    }
}
printNumbers(max: 3)

//isto to samo sa rekurzijom
func printNumbersRecursive(max: Int) {
    if max > 0 {
        printNumbersRecursive(max: max - 1)
    }
    print(max)
}
printNumbersRecursive(max: 3)

/////////////////////////////////////////////////////////


func faktorijelBezRekurzije(broj: Int) -> Int {
    var faktorijel = 0
    for x in 1...broj {
        if faktorijel != 0 {
            faktorijel = faktorijel * x
        } else {
            faktorijel = 1
        }
    }
    return faktorijel
}
faktorijelBezRekurzije(broj: 7)


func faktorijel(broj: Int) -> Int {
    if broj == 1 {
        return 1
    } else {
        return broj * faktorijel(broj: broj - 1)
    }
}
faktorijel(broj: 7)



//  https://projecteuler.net/archives   za mozganje i programersko razmisljanje