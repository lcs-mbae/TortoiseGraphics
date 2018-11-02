//: [Next](@next)
//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 300, height: 300)
let canvas =
    PlaygroundCanvas(frame:myFrame )
canvas.frameRate = 10
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    // Draw a square
    for _ in 1...2{
        turtle.goto(0, 0)
        turtle.penUp()
        turtle.forward(250)
        turtle.penDown()
        turtle.left(180)
        turtle.forward(500)
        turtle.penUp()
        turtle.left(180)
        turtle.forward(250)
        turtle.penUp()
        turtle.right(90)
        turtle.forward(250)
        turtle.penDown()
        turtle.left(180)
        turtle.forward(500)
        
}





