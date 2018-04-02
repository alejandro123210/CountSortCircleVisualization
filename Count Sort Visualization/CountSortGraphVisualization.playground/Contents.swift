//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var arrayToSort = [4, 7, 20, 5, 4, 8, 16, 7, 4, 15, 3, 1, 2, 4, 4, 9, 9, 9, 9, 3, 4, 19, 8]
var sortedArray = [Int]()

for checker in 0...20 {
    for number in arrayToSort {
        if checker == number {
            sortedArray.append(number)
        }
    }
}

print(sortedArray)

let view1 = UIView(frame: CGRect(x: -250, y: 0, width: 600, height: 250))


var rectPosition = 0
var viewArray = [UIView]()
for number in arrayToSort{
    let myRect = UIView(frame: CGRect(x: rectPosition, y: 250, width: 10, height: number * -10))
    rectPosition += 11
    myRect.backgroundColor = UIColor.purple
    viewArray.append(myRect)
}

for view in viewArray {
    view1.addSubview(view)
}


let rectangleForAnimation = UIView(frame: CGRect(x: 0, y: 25, width: 253, height: 10))
rectangleForAnimation.backgroundColor = UIColor.white
view1.addSubview(rectangleForAnimation)

var newRectPosition = 590
Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
    if rectangleForAnimation.frame.origin.y < 245 {
        rectangleForAnimation.frame.origin.y += 4
        for view in viewArray {
            if rectangleForAnimation.frame.intersects(view.frame){
                view.frame.origin.x = CGFloat(newRectPosition)
                newRectPosition -= 11
            }
        }
    }
}





PlaygroundPage.current.needsIndefiniteExecution = false
PlaygroundPage.current.liveView = view1
