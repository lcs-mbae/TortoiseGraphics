//: [Next](@next)
//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas =
    PlaygroundCanvas(frame:myFrame )
canvas.frameRate = 100
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing {turtle in

//    turtle.goto(0, 0)
//    turtle.right(30)
//    turtle.forward(60)
//    turtle.right(60)
//    turtle.forward(100)
//    turtle.right(50)
//    turtle.forward(65)
//    turtle.right(130)
//    turtle.forward(165)
//
//    turtle.square(withSize:48)
    // loop in 10 times
    turtle.trapezoid()

    
    
}






