import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
canvas.frameRate = 30
PlaygroundPage.current.liveView = canvas

canvas.drawing { 🐢 in
    🐢.penColor(.red)
    🐢.fillColor(.yellow)

    🐢.penUp()
    🐢.back(100)
    🐢.penDown()
 
    // Turtle Star!
    🐢.beginFill()
    🐢.repeat(36) {
        🐢.forward(200)
        🐢.left(170)
    }
    🐢.endFill()
}