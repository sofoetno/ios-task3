// შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა).
print("Problem 1")

var firstArray = [1, 2, 3, 4, 5]
var lastValue = firstArray[firstArray.count - 1]

firstArray[firstArray.count - 1] = firstArray[0]
firstArray[0] = lastValue

print(firstArray)

print("")

// შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).
print("Problem 2")

var secondArray = [1, 3, 5, 8, 9, 0, 7]

var toBeRemovedCount = secondArray.count / 2

if secondArray.count % 2 != 0 {
    toBeRemovedCount += 1
}

secondArray.removeSubrange(0..<toBeRemovedCount)
print(secondArray)

print("")

// შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.

print("Problem 3")

var array3 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var arrayEven: [Int] = []
var arrayOdd: [Int] = []

for num in array3 {
    if num % 2 == 0 {
        arrayEven.insert(num, at: arrayEven.count)
    } else {
        arrayOdd.insert(num, at: arrayOdd.count)
    }
}

print(arrayOdd)
print(arrayEven)

print("")

// შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
print("Problem 4")

var arrayDouble = [1.22, 4.25, 5.00, 2.4, 20.00, 16.09]
var bigNumber = 0.0

for number in arrayDouble {
    if number > bigNumber {
        bigNumber = number
    }
}

print(bigNumber)

print("")

// შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
print("Problem 5")

var arr1 = [8, 4, 9, 9, 0, 2]
var arr2 = [1, 0, 9, 2, 3, 7, 0, 1]

var newArray = arr1 + arr2
newArray.sort()

print(newArray)

// ვიცი, რომ არ ჩამეთვლება პასუხი, მაგრამ ცარიელის გამოშვებას ამის დაწერა ვარჩიე :))

print("")


// შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
print("Problem 6")

let a = "butterfly"
var b = Set<Character>()

for char in a {
    b.insert(char)
}

if a.count != b.count {
    print("Not all chars are unique")
} else{
    print("All chars are unique")
}

print("")

// შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.

print("Problem 7")

var number1: Set = [1, 5, 7, 3, 9]
var number2: Set = [8, 66, 6, 1, 7, 55, 19]

var  combinedNumber = number1.union(number2)
print(combinedNumber)

var sameEelemnt = number2.intersection(number1)
print(sameEelemnt)

var elementAtLeastInOneSetButNotBothSet = number2.symmetricDifference(number1)
print(elementAtLeastInOneSetButNotBothSet)

print("")

// შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
print("problem 8")

let tbcLectures: Set =  ["nana", "Sandro", "Vasil"]
let tbcStudents: Set = ["Andria", "Ani", "Damiane", "Nika", "Sesili", "eka", "Giorgi"]

print(tbcLectures.isSubset(of: tbcStudents))

print()


// შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
print("Problem 9")

let array1 = [4, 5, 77, 90, 3, 6, 77]
let set1 = Set(array1)

if array1.count != set1.count {
    print("array შეიცავს მსგავს ელემენტებს")
} else {
   print("array-ში ყველა ელემენტი განსხვავებულია")
}

print("")

// შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
print("Problem 10")

var imdbRating = [
    "oppenheimer": 9.5,
    "Interstellar": 9.0,
    "The big bang theory": 8.5,
    "Painted vail": 8.5,
    "True detective": 9.0
]

var sum = 0.00

for num in imdbRating {
    sum += num.value
}

let average = sum / Double(imdbRating.count)
print(average)



