public extension Tortoise {

    func square(withSize size: Double) {

        // "self" refers to any instances of the
        // Tortoise class
        self.penDown()
        for _ in 1...4 {
            self.forward(size)
            self.right(90)

        }
        self.penUp()

    }

    func trapezoid() {
        self.penDown()
        self.right(30)
        self.forward(40)
        self.right(60)
        self.forward(70)
        self.right(50)
        self.forward(35)
        self.right(130)
        self.forward(70)

    }

    //curve
    func curve(withsides sidecoundt: Int, withsize size: Double, drawsides sidelimit: Int) {

        self.penDown()
        for _ in 1...sidelimit {
            self.forward(size)
            self.right(360/Double(sidecoundt))
        }

    }
    func uppercaseM(scaleFactor scale: Double = 1.0) {

        self.right(10)
        //little curve
        self.curve(withsides: 10, withsize: 5 * scale, drawsides: 5)
        //move down
        self.forward(80 * scale)
        self.left(180)
        self.penUp()
        self.forward(60 * scale)
        self.penDown()
        //little curve
        self.curve(withsides: 10, withsize: 8 * scale, drawsides: 5)
        //move down
        self.forward(65 * scale)
        self.right(180)
        self.penUp()
        self.curve(withsides: 1, withsize: 8 * scale, drawsides: 7)
        self.penDown()
        //little curve
        self.curve(withsides: 10, withsize: 8 * scale, drawsides: 5)
        //move down
        self.forward(60 * scale)
        self.left(50)
        self.curve(withsides: -10, withsize: 6 * scale, drawsides: 4)
        print(self.heading)
        self.setHeading(90)

    }

    func lowercaseI() {
        self.setHeading(356)
        self.right(25)
        self.curve(withsides: 1, withsize: 10, drawsides: 5)
        self.right(155)
        self.curve(withsides: 1, withsize: 10, drawsides: 5)
        self.left(30)
        self.curve(withsides: -10, withsize: 6, drawsides: 5)
        //drawing dot
        self.penUp()
        self.forward(70)
        self.right(110)
        self.forward(15)
        self.penDown()
        self.curve(withsides: 4, withsize: 2, drawsides: 10)
        self.setHeading(90)

    }

    func lowercaseN() {
        self.setHeading(256)
        self.penUp()
        self.right(263)
        self.forward(63)
        self.left(140)
        self.penDown()
        self.forward(30)
        //small curve
        self.curve(withsides: 10, withsize: 5, drawsides: 4)
        self.right(10)
        self.forward(45)
        self.penUp()
        self.right(180)
        self.forward(35)
        self.right(33)
        self.penDown()
        //small curve
        self.curve(withsides: 10, withsize: 8, drawsides: 5)
        //move down
        self.left(40)
        self.forward(25)
        self.curve(withsides: -10, withsize: 5, drawsides: 5)

    }

    func lowercaseA() {
        self.setHeading(-20)
        self.right(30)
        self.forward(15)
        self.curve(withsides: 10, withsize: 10, drawsides: 10)
        self.curve(withsides: 10, withsize: 10, drawsides: 5)
        self.left(40)
        self.forward(15)
        self.curve(withsides: -10, withsize: 5, drawsides: 5)

    }

    func lowercaseH() {
        self.right(40)
        self.forward(70)
        self.curve(withsides: -10, withsize: 5, drawsides: 5)
        self.left(15)
        self.forward(90)
        self.penUp()
        self.right(180)
        self.forward(30)
        self.penDown()
        self.right(20)
        self.curve(withsides: 10, withsize: 7, drawsides: 5)
        self.left(20)
        self.forward(20)
        self.curve(withsides: -10, withsize: 5, drawsides: 4)

    }
    func setupforlastname() {
        self.setHeading(40)
        self.left(150)
        self.penUp()
        self.forward(100)

    }
    func uppercaseB() {
        self.penDown()
        self.left(60)
        self.forward(80)
        self.left(180)
        self.penUp()
        self.forward(70)
        self.right(30)
        self.curve(withsides: 10, withsize: 12, drawsides: 8)
        self.left(240)
        self.curve(withsides: 10, withsize: 15, drawsides: 8)
        self.right(90)
        self.curve(withsides: -10, withsize: 15, drawsides: 2)
        self.penUp()
        self.right(90)
        self.forward(20)
        self.left(70)
        self.penDown()
    }
    func lowercaseE() {
        self.setHeading(356)
        self.right(90)
        self.curve(withsides: 1, withsize: 5, drawsides: 3)
        self.curve(withsides: -10, withsize: 7, drawsides: 6)
        self.curve(withsides: -10, withsize: 15, drawsides: 5)

    }
    func triangle (withSize size: Double) {
        self.penDown()
        self.right(30)
        self.forward(size)
        self.right(120)
        self.forward(size)
        self.right(120)
        self.forward(size)
    }
    func arc(radius: Double, angle: Int) {

        // Source: https://bit.ly/2K9JWbz
        let arcLength = 2 * Double.pi * radius * Double(abs(angle)) / 360
        let segments = Int(arcLength / 4) + 1
        let stepLength = arcLength / Double(segments)
        let stepAngle = Double(angle) / Double(segments)

        // Making a slight left turn before starting reduces the error
        // caused by the linear approximation of the arc
        self.left(stepAngle / 2)
        polyline(segmentCount: segments, length: stepLength, angle: stepAngle)
        self.right(stepAngle / 2)
    }

    func polyline(segmentCount segments: Int, length: Double, angle: Double) {
        for _ in 1...segments {
            self.forward(length)
            self.left(angle)
        }
    }

}
