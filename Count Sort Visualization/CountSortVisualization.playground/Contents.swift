//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var arrayToSort = [4, 7, 2, 5, 4, 8, 6, 7, 4, 5, 3, 1, 2, 4, 4, 9, 9, 9, 9]
var sortedArray = [Int]()

for checker in 0...10 {
    for number in arrayToSort {
        if checker == number {
            sortedArray.append(number)
        }
    }
}

print(sortedArray)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view

for number in arrayToSort {
    let circle = UIBezierPath(arcCenter: CGPoint(x: 250, y: 250), radius: CGFloat(number * 20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = circle.cgPath
    shapeLayer.strokeColor = UIColor.purple.cgColor.copy(alpha: 0.2)
    shapeLayer.lineWidth = 5
    shapeLayer.fillColor = UIColor.clear.cgColor
    
    view.layer.addSublayer(shapeLayer)
}

let rectangleForAnimation = UIView(frame: CGRect(x: 245, y: 245, width: 10, height: 10))
rectangleForAnimation.backgroundColor = UIColor.white
view.addSubview(rectangleForAnimation)

UIView.animate(withDuration: 5, animations: {
    rectangleForAnimation.frame.size.height -= 200
}, completion: nil)
