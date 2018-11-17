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
    

    // setup for drawing signaure
    //set up
    turtle.penUp()
    turtle.setHeading(270)
    turtle.forward(200)
    turtle.setHeading(0)
    
    turtle.penDown()
    
    turtle.uppercaseM(scaleFactor: 1.0)
    turtle.uppercaseM(scaleFactor: 1.5)
    turtle.uppercaseM(scaleFactor: 2.0)
    turtle.uppercaseM(scaleFactor: 2.5)
    turtle.uppercaseM(scaleFactor: 3.0)

//    turtle.lowercaseI()
//
//    turtle.lowercaseN()
//
//    turtle.lowercaseA()
//
//    turtle.lowercaseH()
//
//    turtle.setupforlastname()
//
//    turtle.uppercaseB()
//
//    turtle.lowercaseA()
//
//   turtle.lowercaseE()
    
    
    
    
  
    
    
    
    
    
    
}

