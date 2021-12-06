//
//  DataService.swift
//  ShoeShock
//
//  Created by Jadson on 6/12/21.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category (imageName: "Logo_nike1.png"),
        Category (imageName: "Logo-adidas1.png"),
        Category (imageName: "Puma-logo.png"),
        Category (imageName: "New-Balance-Logo.png"),
    ]
    
    private let nike = [
        Product(title: "NIKE Air Force 1", price: "$180", imageName: "air-force-1.jpeg"),
        Product(title: "NIKE AIR MAX 90", price: "$220", imageName: "air-max-90.jpeg"),
        Product(title: "NIKE AIR MAX 270", price: "$240", imageName: "air-max-270-blue.jpeg"),
        Product(title: "NIKE AIR MAX 270", price: "$240", imageName: "air-max-270.jpeg"),
        Product(title: "NIKE AIR MAX 2015", price: "$89", imageName: "air-max-2015.jpg"),
        Product(title: "NIKE SHOX", price: "$110", imageName: "Shox-Blackmetallic.jpg"),
    ]
    
    
    private let adidas = [
        Product(title: "SUPERSTAR VEGAN SHOES", price: "$140", imageName: "Superstar_Vegan_Black.jpg"),
        Product(title: "NMD_R1 PRIMEBLUE SHOES", price: "$240", imageName: "NMD_R1_White.jpg"),
        Product(title: "SWIFT RUN X SHOES", price: "$180", imageName: "Swift_Run_X_Shoes.jpg"),
        Product(title: "ULTRABOOST 5.0 DNA", price: "$310", imageName: "ULTRABOOST_5.0_DNA.jpg"),
        Product(title: "FORUM LOW SHOES", price: "$170", imageName: "Forum_Low_Shoes.jpg"),
        Product(title: "CODECHAOS 21 PRIMEBLUE SPIKELESS GOLF", price: "$260", imageName: "Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
    ]
    
    private let puma = [
        Product(title: "FLYER RUNNING SHOES", price: "$110", imageName: "FLYER-RUNNING-SHOES.jpg"),
        Product(title: "SOFTRIDE ENZO NXT FADE", price: "$120", imageName: "SOFTRIDE-ENZO-NXT-FADE.jpg"),
        Product(title: "TRIPLE BASKETBALL", price: "$140", imageName: "TRIPLE-BASKETBALL.jpg"),
        Product(title: "DEVIATE NITRO", price: "$240", imageName: "DEVIATE-NITRO.jpg"),
        Product(title: "CELL VIVE EVO", price: "$110", imageName: "CELL-VIVE-EVO"),
        Product(title: "COURT RIDER SUMMER DAYS BASKETBALL", price: "$170", imageName:"COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg"),
    ]
    
    private let newBalance = [
        Product(title: "SALEHE BEMBURY 574 YURT" , price: "$270", imageName: "SaleheBembury-574-YURT.jpg"),
        Product(title: "BB480" , price: "$160", imageName: "BB480.jpg"),
        Product(title: "FRESH FOAM 1080V11" , price: "$290", imageName: "Fresh-Foam1080v11.jpg"),
        Product(title: "FUELCELL PRISM", price: "$200", imageName: "FuelCellPrism.jpg"),
        Product(title: "574v2", price: "$160", imageName: "574v2.jpg"),
        Product(title: "XC72", price: "$200", imageName: "XC72.jpg"),
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
    
    
    
}


