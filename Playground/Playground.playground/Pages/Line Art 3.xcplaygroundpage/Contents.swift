import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 1000
canvas.color = .white
PlaygroundPage.current.liveView = canvas



canvas.drawing { turtle in
    // Draw 10 semi-circles of increasing radius size
   //turtle.hideTortoise()
    turtle.right(90)
    turtle.penSize(2)
    for i in 1...100 {
       
        
        turtle.arc(radius: 3 * Double(i), angle: 360)  // Draw a semi-circle
        turtle.penUp()
        turtle.left(90)
        turtle.forward(10)
        turtle.right(90)
        turtle.penDown()
        turtle.right(90)
        turtle.forward(60)
        turtle.curve(withsides: 15, withsize: 4, drawsides: 5)
    }
    
    
}
