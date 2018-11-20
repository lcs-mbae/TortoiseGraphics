
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
    for _ in 1...10 {
        for _ in 1...6 {
            
            turtle.forward(30)
            turtle.right(60)
            
        }
        turtle.right(36)
        turtle.curve(withsides: 10, withsize: 7, drawsides: 8)

        
    }
    turtle.penUp()
    turtle.forward(100)
    turtle.penDown()
    for _ in 1...10 {
        for _ in 1...10{
            turtle.triangle(withSize: 50)
            turtle.right(36)
        }
        turtle.right(36)
    }
    turtle.penUp()
    turtle.right(180)
    turtle.forward(200)
    turtle.penDown()
    for _ in 1...10{
        for _ in 1...10{
            turtle.trapezoid()
            turtle.right(36)
        }
    }
    turtle.penUp()
    turtle.right(130)
    turtle.forward(60)
    turtle.curve(withsides: 50, withsize: 10, drawsides: 10)
    turtle.curve(withsides: -50, withsize: 10, drawsides: 10)
    turtle.penUp()
    turtle.right(150)
    turtle.forward(140)
    turtle.penDown()
    turtle.curve(withsides: 50, withsize: 10, drawsides: 10)
    turtle.curve(withsides: -50, withsize: 10, drawsides: 10)
    turtle.left(155)
    turtle.penUp()
    turtle.forward(50)
    turtle.right(20)
    turtle.penDown()
    
    
    
}
