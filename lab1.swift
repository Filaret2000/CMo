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

var arr: [Int] = [10, 23, 45, 243, 234234, -1, 2, 6, 3]
print(insertionSort(vector: arr))