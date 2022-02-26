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
        Product(ID: 1, title: "NIKE AIR FORCE 1", price: 190, imageName: "air-force-1.jpeg"),
        Product(ID: 2, title: "NIKE AIR MAX 90", price: 220, imageName: "air-max-90.jpeg"),
        Product(ID: 3, title: "NIKE AIR MAX 270", price: 240, imageName: "air-max-270-blue.jpeg"),
        Product(ID: 4, title: "JORDAN MAX AURA 3", price: 210, imageName: "jordan-max-aura-3.jpeg"),
        Product(ID: 5, title: "NIKE AIR MAX GENOME", price: 270, imageName: "Air-Max-Genome.jpeg"),
        Product(ID: 6, title: "LEBRON 18 LOW", price: 260, imageName: "LeBron-18-Low.jpeg")
    ]
    
    private let adidas = [
        Product(ID: 7, title: "SUPERSTAR VEGAN", price: 140, imageName: "Superstar_Vegan_Black.jpg"),
        Product(ID: 8, title: "NMD_R1 PRIMEBLUE", price: 240, imageName: "NMD_R1_White.jpg"),
        Product(ID: 9, title: "SWIFT RUN X", price: 180, imageName: "Swift_Run_X_Shoes.jpg"),
        Product(ID: 10, title: "ULTRABOOST 5.0 DNA", price: 310, imageName: "ULTRABOOST_5.0_DNA.jpg"),
        Product(ID: 11, title: "FORUM LOW", price: 170, imageName: "Forum_Low_Shoes.jpg"),
        Product(ID: 12, title: "CODECHAOS 21 PRIMEBLUE", price: 260, imageName: "Codechaos_21_Primeblue_Spikeless_Golf_Shoes.jpg")
    ]
    
    private let puma = [
        Product(ID: 13, title: "FLYER RUNNING", price: 110, imageName: "FLYER-RUNNING-SHOES.jpg"),
        Product(ID: 14, title: "SOFTRIDE ENZO NXT FADE", price: 120, imageName: "SOFTRIDE-ENZO-NXT-FADE.jpg"),
        Product(ID: 15, title: "TRIPLE BASKETBALL", price: 140, imageName: "TRIPLE-BASKETBALL.jpg"),
        Product(ID: 16, title: "DEVIATE NITRO", price: 240, imageName: "DEVIATE-NITRO.jpg"),
        Product(ID: 17, title: "CELL VIVE EVO", price: 110, imageName: "CELL-VIVE-EVO.jpg"),
        Product(ID: 18, title: "COURT RIDER BASKETBALL", price: 170, imageName:"COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg")
    ]
    
    private let newBalance = [
        Product(ID: 19, title: "SALEHE BEMBURY 574" , price: 270, imageName: "SaleheBembury-574-YURT.jpg"),
        Product(ID: 20, title: "BB480" , price: 160, imageName: "BB480.jpg"),
        Product(ID: 21, title: "FRESH FOAM 1080V11" , price: 290, imageName: "Fresh-Foam1080v11.jpg"),
        Product(ID: 22, title: "FUELCELL PRISM", price: 200, imageName: "FuelCellPrism.jpg"),
        Product(ID: 23, title: "574v2", price: 160, imageName: "574v2.jpg"),
        Product(ID: 24, title: "XC72", price: 200, imageName: "XC72.jpg")
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
    
    private let force = [
        ImageSet(imageName: "air-force-1.jpeg"),
        ImageSet(imageName: "7air-force-1.jpeg"),
        ImageSet(imageName: "2air-force-1.jpeg"),
        ImageSet(imageName: "3air-force-1.jpeg"),
        ImageSet(imageName: "4air-force-1.jpeg"),
        ImageSet(imageName: "5air-force-1.jpeg"),
        ImageSet(imageName: "6air-force-1.jpeg")
    ]
    
    private let max = [
        ImageSet(imageName: "air-max-90.jpeg"),
        ImageSet(imageName: "7air-max-90.jpeg"),
        ImageSet(imageName: "2air-max-90.jpeg"),
        ImageSet(imageName: "3air-max-90.jpeg"),
        ImageSet(imageName: "4air-max-90.jpeg"),
        ImageSet(imageName: "5air-max-90.jpeg"),
        ImageSet(imageName: "6air-max-90.jpeg")
    ]
    
    private let max270 = [
        ImageSet(imageName: "air-max-270-blue.jpeg"),
        ImageSet(imageName: "2air-max-270-blue.jpeg"),
        ImageSet(imageName: "3air-max-270-blue.jpeg"),
        ImageSet(imageName: "4air-max-270-blue.jpeg"),
        ImageSet(imageName: "5air-max-270-blue.jpeg"),
        ImageSet(imageName: "6air-max-270-blue.jpeg"),
        ImageSet(imageName: "7air-max-270-blue.jpeg")
    ]
    
    private let jordan = [
        ImageSet(imageName: "jordan-max-aura-3.jpeg"),
        ImageSet(imageName: "2jordan-max-aura-3.jpeg"),
        ImageSet(imageName: "3jordan-max-aura-3.jpeg"),
        ImageSet(imageName: "4jordan-max-aura-3.jpeg"),
        ImageSet(imageName: "5jordan-max-aura-3.jpeg"),
        ImageSet(imageName: "6jordan-max-aura-3.jpeg"),
        ImageSet(imageName: "7jordan-max-aura-3.jpeg")
    ]
    
    private let genome = [
        ImageSet(imageName: "Air-Max-Genome.jpeg"),
        ImageSet(imageName: "2Air-Max-Genome.jpeg"),
        ImageSet(imageName: "3Air-Max-Genome.jpeg"),
        ImageSet(imageName: "4Air-Max-Genome.jpeg"),
        ImageSet(imageName: "5Air-Max-Genome.jpeg"),
        ImageSet(imageName: "6Air-Max-Genome.jpeg"),
        ImageSet(imageName: "7Air-Max-Genome.jpeg")
    ]
    
    private let lebron = [
        ImageSet(imageName: "LeBron-18-Low.jpeg"),
        ImageSet(imageName: "2LeBron-18-Low.jpeg"),
        ImageSet(imageName: "3LeBron-18-Low.jpeg"),
        ImageSet(imageName: "4LeBron-18-Low.jpeg"),
        ImageSet(imageName: "5LeBron-18-Low.jpeg"),
        ImageSet(imageName: "6LeBron-18-Low.jpeg"),
        ImageSet(imageName: "7LeBron-18-Low.jpeg")
    ]
    
    func getForce() -> [ImageSet] {
        return force
    }
    
    func getMax() -> [ImageSet] {
        return max
    }
    
    func getMax270() -> [ImageSet] {
        return max270
    }
    
    func getGenome() -> [ImageSet] {
        return genome
    }
    
    func getJordan() -> [ImageSet] {
        return jordan
    }
    
    func getLebron() -> [ImageSet] {
        return lebron
    }
    
    
    //MARK: - PUMA
    private let flyer = [
        ImageSet(imageName: "FLYER-RUNNING-SHOES.jpg"),
        ImageSet(imageName: "2FLYER-RUNNING-SHOES.jpg"),
        ImageSet(imageName: "3FLYER-RUNNING-SHOES.jpg"),
        ImageSet(imageName: "4FLYER-RUNNING-SHOES.jpg"),
        ImageSet(imageName: "5FLYER-RUNNING-SHOES.jpg"),
        ImageSet(imageName: "6FLYER-RUNNING-SHOES.jpg")
    ]
    
    private let softride = [
        ImageSet(imageName: "SOFTRIDE-ENZO-NXT-FADE.jpg"),
        ImageSet(imageName: "2SOFTRIDE-ENZO-NXT-FADE.jpg"),
        ImageSet(imageName: "3SOFTRIDE-ENZO-NXT-FADE.jpg"),
        ImageSet(imageName: "4SOFTRIDE-ENZO-NXT-FADE.jpg"),
        ImageSet(imageName: "5SOFTRIDE-ENZO-NXT-FADE.jpg"),
        ImageSet(imageName: "6SOFTRIDE-ENZO-NXT-FADE.jpg"),
        ImageSet(imageName: "7SOFTRIDE-ENZO-NXT-FADE.jpg")
    ]
    
    private let triple = [
        ImageSet(imageName: "TRIPLE-BASKETBALL.jpg"),
        ImageSet(imageName: "2TRIPLE-BASKETBALL.jpg"),
        ImageSet(imageName: "3TRIPLE-BASKETBALL.jpg"),
        ImageSet(imageName: "4TRIPLE-BASKETBALL.jpg"),
        ImageSet(imageName: "5TRIPLE-BASKETBALL.jpg"),
        ImageSet(imageName: "6TRIPLE-BASKETBALL.jpg")
    ]
    
    private let deviate = [
        ImageSet(imageName: "DEVIATE-NITRO.jpg"),
        ImageSet(imageName: "2DEVIATE-NITRO.jpg"),
        ImageSet(imageName: "3DEVIATE-NITRO.jpg"),
        ImageSet(imageName: "4DEVIATE-NITRO.jpg"),
        ImageSet(imageName: "5DEVIATE-NITRO.jpg"),
        ImageSet(imageName: "6DEVIATE-NITRO.jpg"),
        ImageSet(imageName: "7DEVIATE-NITRO.jpg")
    ]
    
    private let cellVivo = [
        ImageSet(imageName: "CELL-VIVE-EVO.jpg"),
        ImageSet(imageName: "2CELL-VIVE-EVO.jpg"),
        ImageSet(imageName: "3CELL-VIVE-EVO.jpg"),
        ImageSet(imageName: "4CELL-VIVE-EVO.jpg"),
        ImageSet(imageName: "5CELL-VIVE-EVO.jpg"),
        ImageSet(imageName: "6CELL-VIVE-EVO.jpg"),
        ImageSet(imageName: "7CELL-VIVE-EVO.jpg")
    ]
    
    private let court = [
        ImageSet(imageName: "COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg"),
        ImageSet(imageName: "2COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg"),
        ImageSet(imageName: "3COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg"),
        ImageSet(imageName: "4COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg"),
        ImageSet(imageName: "5COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg"),
        ImageSet(imageName: "6COURT-RIDER-SUMMER DAYS-BASKETBALL.jpg")
    ]
    
    
    func getFlyer() -> [ImageSet] {
        return flyer
    }
    
    func getSoftride() -> [ImageSet] {
        return softride
    }
    
    func getTriple() -> [ImageSet] {
        return triple
    }
    
    func getDeviate() -> [ImageSet] {
        return deviate
    }
    
    func getCellVivo() -> [ImageSet] {
        return cellVivo
    }
    
    func getCourt() -> [ImageSet] {
        return court
    }
    
    //MARK: - NEW BALANCE
    
    private let green574 = [
        ImageSet(imageName: "574v2.jpg"),
        ImageSet(imageName: "2_574v2.jpg"),
        ImageSet(imageName: "3_574v2.jpg"),
        ImageSet(imageName: "4_574v2.jpg"),
        ImageSet(imageName: "5_574v2.jpg")
    ]
    
    private let bb480 = [
        ImageSet(imageName: "BB480.jpg"),
        ImageSet(imageName: "2_BB480.jpg"),
        ImageSet(imageName: "3_BB480.jpg"),
        ImageSet(imageName: "4_BB480.jpg"),
        ImageSet(imageName: "5_BB480.jpg")
    ]
    
    private let freshFoam = [
        ImageSet(imageName: "Fresh-Foam1080v11.jpg"),
        ImageSet(imageName: "2Fresh-Foam1080v11"),
        ImageSet(imageName: "3Fresh-Foam1080v11"),
        ImageSet(imageName: "4Fresh-Foam1080v11"),
        ImageSet(imageName: "5Fresh-Foam1080v11")
    ]
    
    private let fuelCell = [
        ImageSet(imageName: "FuelCellPrism.jpg"),
        ImageSet(imageName: "2FuelCellPrism.jpg"),
        ImageSet(imageName: "3FuelCellPrism.jpg"),
        ImageSet(imageName: "4FuelCellPrism.jpg"),
        ImageSet(imageName: "5FuelCellPrism.jpg")
    ]
    
    private let sahele = [
        ImageSet(imageName: "SaleheBembury-574-YURT.jpg"),
        ImageSet(imageName: "2SaleheBembury-574-YURT.jpg"),
        ImageSet(imageName: "3SaleheBembury-574-YURT.jpg"),
        ImageSet(imageName: "4SaleheBembury-574-YURT.jpg"),
        ImageSet(imageName: "5SaleheBembury-574-YURT.jpg")
    ]
    
    private let xc72 = [
        ImageSet(imageName: "XC72.jpg"),
        ImageSet(imageName: "2_XC72.jpg"),
        ImageSet(imageName: "3_XC72.jpg"),
        ImageSet(imageName: "4_XC72.jpg"),
        ImageSet(imageName: "5_XC72.jpg")
    ]
    
    
    func getGreen574() -> [ImageSet] {
        return green574
    }
    
    func getBB480() -> [ImageSet] {
        return bb480
    }
    
    func getFreshFoam() -> [ImageSet] {
        return freshFoam
    }
    
    func getFuelCell() -> [ImageSet] {
        return fuelCell
    }
    
    func getSahele() -> [ImageSet] {
        return sahele
    }
    
    func getXC72() -> [ImageSet] {
        return xc72
    }
    
    
    //MARK: - GETIMAGE METHOD
    
    func getImageSet(forId id: Int) -> [ImageSet] {
        switch id {
        case 1:
            return getForce()
        case 2:
            return getMax()
        case 3:
            return getMax270()
        case 4:
            return getJordan()
        case 5:
            return getGenome()
        case 6:
            return getLebron()
        case 7:
            return getSuperstar()
        case 8:
            return getNMD()
        case 9:
            return getSwift()
        case 10:
            return getUltraboost()
        case 11:
            return getForum()
        case 12:
            return getCodechaos()
        case 13:
            return getFlyer()
        case 14:
            return getSoftride()
        case 15:
            return getTriple()
        case 16:
            return getDeviate()
        case 17:
            return getCellVivo()
        case 18:
            return getCourt()
        case 19:
            return getSahele()
        case 20:
            return getBB480()
        case 21:
            return getFreshFoam()
        case 22:
            return getFuelCell()
        case 23:
            return getGreen574()
        case 24:
            return getXC72()
        default:
            return getNMD()
        }
    }
    
    //MARK: - Selected Product for Cart

    var selectedProduct = [SelectedProduct]()

    //    private let selectedProduct = [
    //        SelectedProduct(product: Product (ID: 19, title: "SALEHE BEMBURY 574 YURT" , price: 270, imageName: "SaleheBembury-574-YURT.jpg"), quantity: 1, totalCost: 0.0),
    //        SelectedProduct(product: Product (ID: 19, title: "SALEHE BEMBURY 574 YURT" , price: 270, imageName: "SaleheBembury-574-YURT.jpg"), quantity: 1, totalCost: 0.0)
    //        ]

    func getProductsCart(for id: Int) -> [SelectedProduct]{
        print("passed here")
        return selectedProduct
    }
    
}







