import Foundation

func insertionSort(vector: [Int]) -> [Int] {
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
    return array
}


func selectionSort(vector: [Int]) -> [Int] {
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
    return array;
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
var array = readFile(path)
print(insertionSort(vector: array))

path = "/home/vboxuser/CMo/input5000.txt"
array = readFile(path)
print(insertionSort(vector: array))

// path = "/home/vboxuser/CMo/input10000.txt"
// array = readFile(path)
// print(insertionSort(vector: array))
// print(selectionSort(vector: arr))