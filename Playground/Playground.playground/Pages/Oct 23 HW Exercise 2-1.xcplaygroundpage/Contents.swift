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

canvas.drawing { turtle in
 turtle.right(30)
    //loop 10 times
    for _ in 1...40 {
        //loop in 3 times
        for _ in 1...4 { turtle.forward(100)
            turtle.right(120)
            
        }
        //turn a bit
        turtle.left(10)
    }
}





