/*:
 
 # Writing a custom class
 
 As we saw the other day, moving functionality into a separate class, and out of the playground itself, *significantly* speeds up execution time.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport
/*:

 ## Explanation
 
 The next few paragraphs explain what is happening in the code below.

 - example: The canvas is 500 by 500 pixels.
   
    An *instance* of the Canvas class is made. The instance is referred to as an *object*.
 
    Then, an instance of the Image class is made, also creating an object.
 
    Note that the canvas object is passed as an *argument* when the image object is created.
 
    To edit the Image class, show the Navigator (left-hand panel) and edit the **Image.swift** file:
 
    ![navigator](navigator.png "Navigator")
 
    As you develop parts of your image, move the functionality into a method inside the class.
 
 */
// Create an object of type Canvas, named "canvas"
let canvas = Canvas(width: 500, height: 500)

// Create an object of type Image, named "image"
let image = Image(drawOn: canvas)

// You can "tweak" or develop new functionality in the playground below...

// Draw a rectangle on the canvas
//canvas.drawRectangle(centreX: 50, centreY: 50, width: 25, height: 25)
//canvas.drawText(message: "This square is drawn from the playground directly.", size: 12, x: 75, y: 40)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
