//
//  ContactUsViewController.swift
//  Bike & Hike
//
//  Created by Antoine Perry on 9/8/19.
//  Copyright © 2019 Antoine Perry. All rights reserved.
//

import UIKit
import MapKit

class ContactUsViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var buttonEffin: UIButton!
    
    //charleston, IL
    var latitude = 39.488433
    var longitude = -88.162727
    
    //Effingham, IL
    var latitude2 = 39.121600
    var longitude2 = -88.544300
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        button0.layer.cornerRadius = 5
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        buttonEffin.layer.cornerRadius = 5
        
        let span = MKCoordinateSpan.init(latitudeDelta: 1.5, longitudeDelta: 1.5)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        let span2 = MKCoordinateSpan.init(latitudeDelta: 1.5, longitudeDelta: 1.5)
        let region2 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude2, longitude: longitude2), span: span2)
        
        mapView.setRegion(region, animated: true)
        mapView.setRegion(region2, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinLocation2: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude2, longitude2)
        
        let pinAnn = MKPointAnnotation()
        pinAnn.coordinate = pinLocation
        pinAnn.title = "Bike & Hike"
        pinAnn.subtitle = "959 18th St. Charleston, IL"
        self.mapView.addAnnotation(pinAnn)
        
        let pinAnn2 = MKPointAnnotation()
        pinAnn2.coordinate = pinLocation2
        pinAnn2.title = "Bike & Hike"
        pinAnn2.subtitle = "300 W. Jefferson Ave. Effingham, IL"
        self.mapView.addAnnotation(pinAnn2)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:  .plain, target: nil, action: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"https://maps.apple.com/maps?daddr=\(latitude2),\(longitude2)")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func directionschs(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callus(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"tel://2173451316")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func callus2(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"tel://2173422453")!, options: [:], completionHandler: nil)
    }
    
    
}
