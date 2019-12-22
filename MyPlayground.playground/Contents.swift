import UIKit

import PlaygroundSupport


let liveViewFrame = CGRect(x: 0, y: 0, width: 800, height: 800)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .white

let smallFrame = CGRect(x:0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .purple
liveView.addSubview(square)


PlaygroundPage.current.liveView = liveView


UIView.animate(withDuration: 2.0, animations: {
    square.backgroundColor = .orange
        let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let rotateTransform = CGAffineTransform(rotationAngle: .pi)
        let translateTransform = CGAffineTransform(translationX:
        200, y: 200)
        let comboTransform = scaleTransform.concatenating(rotateTransform).concatenating(translateTransform)
    //square.frame = CGRect(x: 150, y: 150, width: 300, height:300)
    square.transform = comboTransform
    
}) { (_) in
    UIView.animate(withDuration: 2.0, animations: {
        square.transform = CGAffineTransform.identity
    })
}
