//
//  CarsList.swift
//  cfao_ios
//
//  Created by Smartcodes on 11/11/2021.
//

var cars = [
    Car(image: "image0", name: "Swift", logo: "altologo", feature1:"1.5 litre engine", feature2:" Ample body angles and clearance", feature3:" Brake LSD Traction Control", feature4:"Hill Hold Contro", feature5:" High Beam Assist", feature6:"Traffic sign recognition", slogan: "Crafted for adventure"),
    Car(image: "image1", name: "Alto", logo: "logo2", feature1:" Ample body angles and clearance", feature2:"1.5 litre engine", feature3:"Hill Hold Contro", feature4:" High Beam Assist", feature5:"Traffic sign recognition", feature6:"Traffic sign recognition", slogan: "Crafted for racing"),
    Car(image: "image2", name: "Swift", logo: "altologo", feature1:" Brake LSD Traction Control", feature2:" High Beam Assist", feature3:"1.5 litre engine", feature4:" Ample body angles and clearance", feature5:"Hill Hold Contro", feature6:"Traffic sign recognition", slogan: "Whatever Whatever"),
    Car(image: "image3", name: "Jimny", logo: "logo2",feature1:" High Beam Assist", feature2:" Brake LSD Traction Control", feature3:"Hill Hold Contro", feature4:"1.5 litre engine", feature5:" Ample body angles and clearance", feature6:"Hill Hold Contro", slogan: "Crafted for your lifestyle"),
    Car(image: "image4", name: "Maruti", logo: "altologo", feature1:"Hill Hold Contro", feature2:" High Beam Assist", feature3:" Brake LSD Traction Control", feature4:"Hill Hold Contro", feature5:"1.5 litre engine", feature6:" Ample body angles and clearance", slogan: "Crafted for adventure"),
    Car(image: "image5", name: "Swift RS", logo: "logo2", feature1:"Traffic sign recognition", feature2:"Hill Hold Contro", feature3:" Ample body angles and clearance", feature4:" Brake LSD Traction Control", feature5:" High Beam Assist", feature6:"1.5 litre engine", slogan: "Crafted for whatever")
]

struct Car {
    let image: String
    let name: String
    let logo: String
    let feature1: String
    let feature2: String
    let feature3: String
    let feature4: String
    let feature5: String
    let feature6: String
    let slogan: String
}
