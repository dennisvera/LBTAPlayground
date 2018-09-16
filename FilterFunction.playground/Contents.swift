//: Playground - noun: a place where people can play

import Foundation

// -------- Swift: Filter Function --------

let numbers = [3, 5, 9, 12, 14, 19]

let filtered = numbers.filter { (num) -> Bool in
    return num < 10
}

//print(filtered)


// -------- Create a Manual Filter Function --------

// Chances are you know how to use the above function quite well, but do you know how something like this is actually implemented? We don't know the exact details under the hood, but a good guess can be the following:

extension Array {
    
    func filteredElements(filterFunc: (Element) -> Bool) -> [Element] {
        var allElements = [Element]()
        self.forEach { (element) in

            if filterFunc(element) {
                allElements.append(element)
            }
        }
        return allElements
    }
    
}


// -------- Test Cases --------


let evenNumbers = [1,2,3,4,5].filteredElements { (num) -> Bool in
    return num % 2 == 0
}
print(evenNumbers) // [2, 4]


let dogs = ["big-dog", "small-cat", "small-dog", "medium-cat"].filteredElements { (pet) -> Bool in
    return pet.contains("dog")
}
print(dogs) // ["big-dog", "small-dog"]



