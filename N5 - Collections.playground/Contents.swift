import Foundation

/*დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)*/

func reverseCheck (teqsti: String) -> (Bool){
    var revString = ""
    for char in teqsti{
        revString = String(char) + revString
    }

    if revString == teqsti {
        print(true)
        return(true)
        
    } else {
        print(false)
        return(false)
    }
}
reverseCheck(teqsti: "ana")


/* დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას. */

func squareArray (arr: Array<Int>) -> (Array<Int>){
    var squaredNumbers: [Int] = []
    for number in arr {
        let squares = number * number
        squaredNumbers.append(squares)
    }
    print(squaredNumbers)
    return squaredNumbers
}

squareArray(arr: [1, 2, 3])

/* დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან */
var y: [Int] = []
let closureFunction: (Array<Int>) -> (Array<Int>) = { newArray1 in
    for num in newArray1 {
        if num % 2 == 0{
            y.append(num)
        }
    }
    print(y)
    return y
}

closureFunction([1, 2, 3, 4, 5])

/* დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება. */

func sumOfArr (_ array: [Int]) -> (() -> Void) {
    var completion: (() -> Void)?

    DispatchQueue.global().asyncAfter(deadline: .now() + 5) {
        let sum = array.reduce(0, +)
        completion?()
    }

    return {
        completion = {
            print("Sum with delay: \(array.reduce(0, +))")
        }
    }
}
/* closure შევინახე ცვლადში და ბოლოს ისე გამოვიყენე, იმედია სწორი ტექნიკაა?*/



/* შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი */

var phoneNums: [String: Int] = [
    "Giorgi": 555444333,
    "Mariam": 599999999,
    "Vano": 588888888
]

phoneNums["Nini"] = 598111222 /* დამატება */
phoneNums.removeValue(forKey: "Giorgi") /* წაშლა */
phoneNums.contains{$0.key == "Nini"} /* მოძებნა */
if let value = phoneNums["Vano"] { /* დაპრინტვა თუ გვაქვს ტელ ნომერი */
    print("Vanikos tel nomeria: \(value)")
} else {
    print("ups dagvaviwyda chawera")
}

/* დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს */

var newArr3: [String] = []
func anbani (from dictionary: [String: Int]) -> [String]{
    let keys = dictionary.keys.sorted()
    print(keys)
    return keys
}

anbani(from: ["Vashli-Goruli": 4, "Mandarini-Dasavluri": 2])

/* შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ */

var doubleArr = [4.99, 1.22, 5.77]
for num4 in doubleArr{
    if num4 == doubleArr.max(){
        print(num4)
    }
}

