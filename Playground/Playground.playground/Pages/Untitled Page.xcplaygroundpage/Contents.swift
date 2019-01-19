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
    turtle.girl()
    
}

