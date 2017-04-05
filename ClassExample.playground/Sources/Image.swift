import Foundation

public class Image {
    
    // MARK: Properties
    
    // Properties can be used inside any of the method(s) / function(s) below
    var c : Canvas
    
    // MARK: Initializer(s)
    
    // The initializer runs once when the class is used to create an object
    public init(drawOn theCanvas : Canvas) {
        
        // Add a reference to the provided
        c = theCanvas
        
        // Draw the image by invoking method(s) below
        upperCircle()
        lowerCircle()
    }
    
    // MARK: Method(s)/Function(s)
    
    // Method(s) to draw the image on the provided canvas go below
    
    /**
     Draws the upper circle of the wallpaper pattern.
     */
    func upperCircle() {
        
        for x in stride(from: 40, through: 520, by: 80){
            for y in stride(from: 0, through: 240, by: 240){
                c.drawShapesWithBorders = false
                // Bigger Brown Circles
                c.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
                c.drawEllipse(centreX: x, centreY: y + 40, width: 70, height: 70)
                c.drawEllipse(centreX: x, centreY: y + 200, width: 70, height: 70)
                // Bigger Yellow Circles
                c.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
                c.drawEllipse(centreX: x - 40, centreY: y + 80, width: 70, height: 70)
                c.drawEllipse(centreX: x - 40, centreY: y + 160, width: 70, height: 70)
                // Orange Circles
                c.fillColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
                c.drawEllipse(centreX: x, centreY: y + 40, width: 50, height: 50)
                c.drawEllipse(centreX: x, centreY: y + 200, width: 50, height: 50)
                c.drawEllipse(centreX: x - 40, centreY: y + 80, width: 50, height: 50)
                c.drawEllipse(centreX: x - 40, centreY: y + 160, width: 50, height: 50)
                // Smaller Yellow Circles
                c.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
                c.drawEllipse(centreX: x, centreY: y + 40, width: 30, height: 30)
                c.drawEllipse(centreX: x, centreY: y + 200, width: 30, height: 30)
                // Smaller Brown Circles
                c.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
                c.drawEllipse(centreX: x - 40, centreY: y + 80, width: 30, height: 30)
                c.drawEllipse(centreX: x - 40, centreY: y + 160, width: 30, height: 30)
                // Very Small White Circles
                c.fillColor = Color.white
                c.drawEllipse(centreX: x, centreY: y + 40, width: 10, height: 10)
                c.drawEllipse(centreX: x, centreY: y + 200, width: 10, height: 10)
                c.drawEllipse(centreX: x - 40, centreY: y + 80, width: 10, height: 10)
                c.drawEllipse(centreX: x - 40, centreY: y + 160, width: 10, height: 10)
            }
        }
    }
    
    /**
     Draws the lower circle of the wallpaper pattern.
     */
    func lowerCircle() {
        
        for x in stride(from: 0, through: 520, by: 40) {
            for y in stride(from: 45, through: 405, by: 120) {
                c.lineColor = Color.white
                c.defaultLineWidth = 10
                c.drawLine(fromX: x, fromY: y, toX: x, toY: y + 30)
            }
        }
        
        // The Brown, Yellow and Orange lines
        for x in stride(from: 0, through: 520, by: 80) {
            for y in stride(from: 0, through: 480, by: 120) {
                // Brown
                c.lineColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
                c.drawLine(fromX: x + 10, fromY: y + 45, toX: x + 10, toY: y + 75)
                c.drawLine(fromX: x + 70, fromY: y + 45, toX: x + 70, toY: y + 75)
                // Orange
                c.lineColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
                c.drawLine(fromX: x + 20, fromY: y + 45, toX: x + 20, toY: y + 75)
                c.drawLine(fromX: x + 60, fromY: y + 45, toX: x + 60, toY: y + 75)
                // Yellow
                c.lineColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
                c.drawLine(fromX: x + 30, fromY: y + 45, toX: x + 30, toY: y + 75)
                c.drawLine(fromX: x + 50, fromY: y + 45, toX: x + 50, toY: y + 75)
            }
        }
    }
}
