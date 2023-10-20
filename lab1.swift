import Foundation

func insertionSort(vector: [Int]) {
    let length = vector.count
    var array = vector

    for index in 1..<length {
        let key = array[index]
        var flag = 0;
        
        for var j in (0...index-1).reversed() {
            if (flag != 1) {
                if (key < array[j]) {
                    array[j+1] = array[j]
                    j = j - 1
                    array[j + 1] = key
                }
                else {
                    flag = 1
                }
            }
        }
    }
}


func selectionSort(vector: [Int]) {
    let length = vector.count
    var array = vector

    for i in 0..<length - 1 {
        var smallestVal = i
        for j in (i + 1)..<length {
            if (array[j] < array[smallestVal])
            {
                smallestVal = j
            }
        }
        let tempVar = array[smallestVal]
        array[smallestVal] = array[i]
        array[i] = tempVar
    }
}

func readFile(_ path: String) -> [Int] {
    var array: [Int] = []
    errno = 0
    if freopen(path, "r", stdin) == nil {
        perror(path)
        return [1]
    }
    while let line = readLine() {
        let number: Int? = Int(line)
        array.append(number!)
    }
    return array
}

var path = "/home/vboxuser/CMo/input2000.txt"
var alg = "insertion"
var array: [Int] = []

alg = CommandLine.arguments[1]
path = CommandLine.arguments[2]
array = readFile(path)

switch (alg) {
    case "insertion":
        insertionSort(vector: array)
    case "selection":
        selectionSort(vector: array)
    default:
        print("Nothing was performed")
}