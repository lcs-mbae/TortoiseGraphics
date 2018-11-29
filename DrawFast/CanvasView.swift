import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { turtle in
            
            // Add your commands within this block
            turtle.right(90)
            turtle.penSize(2)
            for i in 1...60 {
                
                
                turtle.arc(radius: 3 * Double(i), angle: 360)  // Draw a semi-circle
                turtle.penUp()
                turtle.left(90)
                turtle.forward(10)
                turtle.right(90)
                turtle.penDown()
                turtle.right(90)
                turtle.forward(60)
                turtle.curve(withsides: 15, withsize: 4, drawsides: 5)
                turtle.curve(withsides: 30, withsize: 2, drawsides: 4)
                turtle.curve(withsides: 1, withsize: 3, drawsides: 4)
            }
            
            
        }
    }
    
}
