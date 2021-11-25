//
//  ViewController.swift
//  MobileApp(water_tracking)
//
//  Created by Ankit Lalotra on 9/29/21.
//
import MapKit //provides all the map related stuff
import UIKit
import WebKit
class ViewController: UIViewController {
    
    @IBOutlet weak var lblAppInstructions: UILabel!

    @IBOutlet weak var txtWaterVolume: UITextField!
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet var mapView: MKMapView!
    
   

    

        @IBOutlet weak var heightTextField: UITextField!
        @IBOutlet weak var weightTextFeild: UITextField!
        @IBOutlet weak var resultLabel: UILabel!
        @IBAction func CompileBMI(_ sender: Any) {
            let h = Double(heightTextField.text!)
            let w = Double(weightTextFeild.text!)
            let bmiM = BMIMod(height:h!,weight:w!)
            resultLabel.text=String(bmiM.bmi())
        }
    


    
    
    
    
    func getCurrentDate() -> String{
        let date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        return dateFormatter.string(from: date as Date)
    }
    
    
    
    @IBAction func btnAddWater(_ sender: Any) {
        let date = getCurrentDate()
        print(date)
        let volume = Double(txtWaterVolume.text!)
        print(entries.count)
        
        if entries.contains(where: {$0.date == date}){
            let currentValue = entries.first(where: {$0.date == date})?.volume
            entries.first(where: {$0.date == date})?.volume = currentValue! + volume! //crashes if not entered a value
        } else {
            let newEntry = WaterRecord(date: date, volume: volume!) //if started and just clicked "add" it crashes // or letters 
            entries.append(newEntry)
            print("New Entry was added")
        }
    }
    
   
    
    
}


