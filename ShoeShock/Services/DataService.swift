//
//  DataService.swift
//  ShoeShock
//
//  Created by Jadson on 6/12/21.
//

import Foundation
import UIKit

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category (categoryName: "NIKE", imageName: "Logo_nike1.png"),
        Category (categoryName: "ADIDAS", imageName: "Logo-adidas1.png"),
        Category (categoryName: "PUMA", imageName: "Puma-logo.png"),
        Category (categoryName: "NEWBALANCE", imageName: "New-Balance-Logo.png")
    ]
    
    private let nike = [
        Product(ID: 1, title: "NIKE Air Force 1", price: "$180", imageName: "air-force-1.jpeg"),
        Product(ID: 2, title: "NIKE AIR MAX 90", price: "$220", imageName: "air-max-90.jpeg"),
        Product(ID: 3, title: "NIKE AIR MAX 270", price: "$240", imageName: "air-max-270-blue.jpeg"),
        Product(ID: 4, title: "NIKE AIR MAX 270", price: "$240", imageName: "air-max-270.jpeg"),
        Product(ID: 5, title: "NIKE AIR MAX 2015", price: "$89", imageName: "air-max-2015.jpg"),
        Product(ID: 6, title: "NIKE SHOX", price: "$110", imageName: "Shox-Blackmetallic.jpg")
    ]
    
    
    private let adidas = [
        Product(ID: 7, title: "SUPERSTAR VEGAN SHOES", price: "$140", imageName: "Superstar_Vegan_Black.jpg"),
        Product(ID: 8, title: "NMD_R1 PRIMEBLUE SHOES", price: "$240", imageName: "NMD_R1_White.jpg"),
        Product(ID: 9, title: "SWIFT RUN X SHOES", price: "$180", imageName: "Swift_Run_X_Shoes.jpg"),
        Product(ID: 10, title: "ULTRABOOST 5.0 DNA", price: "$310", imageName: "ULTRABOOST_5.0_DNA.jpg"),
        Product(ID: 11, title: "FORUM LOW SHOES", price: "$170", imageName: "Forum_Low_Shoes.jpg"),
        Product(ID: 12, title: "CODECHAOS 21 PRIMEBLUE SPIKELESS GOLF", price: "$260", imageName: "Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg")
    ]
    
    private let puma = [
        Product(ID: 13, title: "FLYER RUNNING SHOES", price: "$110", imageName: "FLYER-RUNNING-SHOES.jpg"),
        Product(ID: 14, title: "SOFTRIDE ENZO NXT FADE", price: "$120", imageName: "SOFTRIDE-ENZO-NXT-FADE.jpg"),
        Product(ID: 15, title: "TRIPLE BASKETBALL", price: "$140", imageName: "TRIPLE-BASKETBALL.jpg"),
        Product(ID: 16, title: "DEVIATE NITRO", price: "$240", imageName: "DEVIATE-NITRO.jpg"),
        Product(ID: 17, title: "CELL VIVE EVO", price: "$110", imageName: "CELL-VIVE-EVO"),
        Product(ID: 18, title: "COURT RIDER SUMMER DAYS BASKETBALL", price: "$170", imageName:"COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg")
    ]
    
    private let newBalance = [
        Product(ID: 19, title: "SALEHE BEMBURY 574 YURT" , price: "$270", imageName: "SaleheBembury-574-YURT.jpg"),
        Product(ID: 20, title: "BB480" , price: "$160", imageName: "BB480.jpg"),
        Product(ID: 21, title: "FRESH FOAM 1080V11" , price: "$290", imageName: "Fresh-Foam1080v11.jpg"),
        Product(ID: 22, title: "FUELCELL PRISM", price: "$200", imageName: "FuelCellPrism.jpg"),
        Product(ID: 23, title: "574v2", price: "$160", imageName: "574v2.jpg"),
        Product(ID: 24, title: "XC72", price: "$200", imageName: "XC72.jpg")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "NIKE":
            return getNike()
        case "ADIDAS":
            return getAdidas()
        case "PUMA":
            return getPuma()
        case "NEWBALANCE":
            return getNewBalance()
        default:
            return getNike()
        }
    }
    
    func getNike() -> [Product]{
        return nike
    }
    
    func getAdidas() -> [Product]{
        return adidas
    }
    
    func getPuma() -> [Product]{
        return puma
    }
    
    func getNewBalance() -> [Product]{
        return newBalance
    }
    
    //MARK: - IMAGE SET DATA SOURCE
    
    //MARK: - ADIDAS
    
    private let nmd = [
        ImageSet(imageName: "NMD_R1_White.jpg"),
        ImageSet(imageName: "2NMD_R1_White.jpg"),
        ImageSet(imageName: "3NMD_R1_White.jpg"),
        ImageSet(imageName: "4NMD_R1_White.jpg"),
        ImageSet(imageName: "5NMD_R1_White.jpg"),
        ImageSet(imageName: "6NMD_R1_White.jpg"),
        ImageSet(imageName: "7NMD_R1_White.jpg"),
        ImageSet(imageName: "8NMD_R1_White.jpg"),
        ImageSet(imageName: "9NMD_R1_White.jpg")
    ]
    private let codechaos = [
        ImageSet(imageName: "Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "2Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "3Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "4Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "5Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "6Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "7Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg"),
        ImageSet(imageName: "8Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg")
        
    ]
    
    private let forum = [
        ImageSet(imageName: "Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "2Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "3Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "4Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "5Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "6Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "7Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "8Forum_Low_Shoes.jpg"),
        ImageSet(imageName: "9Forum_Low_Shoes.jpg")
    ]
    
    private let superstar = [
        ImageSet(imageName: "Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "2Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "3Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "4Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "5Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "6Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "7Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "8Superstar_Vegan_Black.jpg"),
        ImageSet(imageName: "9Superstar_Vegan_Black.jpg")
    ]
    
    private let swift = [
        ImageSet(imageName: "Swift_Run_X_Shoes.jpg"),
        ImageSet(imageName: "2Swift_Run_X_Shoes.jpg"),
        ImageSet(imageName: "3Swift_Run_X_Shoes.jpg"),
        ImageSet(imageName: "4Swift_Run_X_Shoes.jpg"),
        ImageSet(imageName: "5Swift_Run_X_Shoes.jpg"),
        ImageSet(imageName: "6Swift_Run_X_Shoes.jpg")
    ]
    
    private let ultraboost = [
        ImageSet(imageName: "ULTRABOOST_5.0_DNA.jpg"),
        ImageSet(imageName: "2ULTRABOOST_5.0_DNA.jpg"),
        ImageSet(imageName: "3ULTRABOOST_5.0_DNA.jpg"),
        ImageSet(imageName: "4ULTRABOOST_5.0_DNA.jpg"),
        ImageSet(imageName: "5ULTRABOOST_5.0_DNA.jpg"),
        ImageSet(imageName: "6ULTRABOOST_5.0_DNA.jpg"),
        ImageSet(imageName: "7ULTRABOOST_5.0_DNA.jpg")
    ]
    
    func getNMD() -> [ImageSet] {
        return nmd
    }
    
    func getCodechaos() -> [ImageSet] {
        return codechaos
    }
    
    func getForum() -> [ImageSet] {
        return forum
    }
    
    func getSuperstar() -> [ImageSet] {
        return superstar
    }
    
    func getSwift() -> [ImageSet] {
        return swift
    }
    
    func getUltraboost() -> [ImageSet] {
        return ultraboost
    }
    
    //MARK: - NIKE
    
    //        func getCodechaos() -> [ImageSet] {
    //            return codechaos
    //        }
    //
    //        func getCodechaos() -> [ImageSet] {
    //            return codechaos
    //        }
    //
    //        func getCodechaos() -> [ImageSet] {
    //            return codechaos
    //        }
    //
    //        func getCodechaos() -> [ImageSet] {
    //            return codechaos
    //        }
    //
    //        func getCodechaos() -> [ImageSet] {
    //            return codechaos
    //        }
    //
    //        func getCodechaos() -> [ImageSet] {
    //            return codechaos
    //        }
    
    
    //MARK: - PUMA
    
    //func getCodechaos() -> [ImageSet] {
    //        return codechaos
    //    }
    //
    //    func getCodechaos() -> [ImageSet] {
    //        return codechaos
    //    }
    //
    //    func getCodechaos() -> [ImageSet] {
    //        return codechaos
    //    }
    //
    //    func getCodechaos() -> [ImageSet] {
    //        return codechaos
    //    }
    //
    //    func getCodechaos() -> [ImageSet] {
    //        return codechaos
    //    }
    //
    //    func getCodechaos() -> [ImageSet] {
    //        return codechaos
    //    }
    
    //MARK: - NEW BALANCE
        
        //func getCodechaos() -> [ImageSet] {
        //        return codechaos
        //    }
        //
        //    func getCodechaos() -> [ImageSet] {
        //        return codechaos
        //    }
        //
        //    func getCodechaos() -> [ImageSet] {
        //        return codechaos
        //    }
        //
        //    func getCodechaos() -> [ImageSet] {
        //        return codechaos
        //    }
        //
        //    func getCodechaos() -> [ImageSet] {
        //        return codechaos
        //    }
        //
        //    func getCodechaos() -> [ImageSet] {
        //        return codechaos
        //    }
    
    
    //MARK: - GETIMAGE METHOD
    
    func getImageSet(forId id: Int) -> [ImageSet] {
        switch id {
        case 1:
            return getNMD()
        case 2:
            return getCodechaos()
        case 3:
            return getCodechaos()
        case 4:
            return getCodechaos()
        case 5:
            return getCodechaos()
        case 6:
            return getCodechaos()
        case 7:
            return getSuperstar()
        case 8:
            return getNMD()//ok
        case 9:
            return getSwift()
        case 10:
            return getUltraboost()
        case 11:
            return getForum()
        case 12:
            return getCodechaos()//ok
        case 13:
            return getCodechaos()
        case 14:
            return getCodechaos()
        case 15:
            return getCodechaos()
        case 16:
            return getCodechaos()
        case 17:
            return getCodechaos()
        case 18:
            return getCodechaos()
        case 19:
            return getCodechaos()
        case 20:
            return getCodechaos()
        case 21:
            return getCodechaos()
        case 22:
            return getCodechaos()
        case 23:
            return getCodechaos()
        case 24:
            return getCodechaos()
        default:
            return getNMD()
        }
    }
    
}



