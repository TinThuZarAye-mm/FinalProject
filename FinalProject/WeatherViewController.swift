//
//import UIKit
//import CoreLocation
//
//struct ApiResponseList: Codable {
//
//    let Coord: coord
//    let Main: MainTemp
//    let Wind: wind
//
//
//}
//
//struct coord: Codable {
//    let lat, lon : Double
//}
//struct MainTemp: Codable {
//    let temp, pressure, humidity, temp_min, temp_max: Double
//}
//struct wind: Codable {
//    let speed, deg: Double
//}
//
//func weather(location:CLLocation){
//    guard let url = URL(string: "api.openweathermap.org/data/2.5/find?q=London&appid=68a1455aadd6e11bbc4b33066aebccb6") else {
//        return
//    }
//
//    let task = URLSession.shared.dataTask(with: url) { (maybeData, maybeResponse, maybeError) in
//
//        guard let data = maybeData else {
//            return
//        }
//
//        let decoder = JSONDecoder()
//
//        do {
//            _ = try decoder.decode(ApiResponseList.self, from: data)
//        } catch {
//            print (error)
//        }
//
//
//    }
//
//    task.resume()
//}
//
//
//
//
//
//
//class WeatherViewController: UIViewController, UITextFieldDelegate {
//
//    @IBOutlet weak var CityLabel: UILabel!
//
//
//    @IBOutlet weak var CityTextField: UITextField!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        CityTextField.delegate = self
//
//        location(city: "London")
//        
//    }
//    
//    func location(city: String){
//        CLGeocoder().geocodeAddressString(city) {(placemark:[CLPlacemark]?, error: Error?)  in
//            if error == nil {
//                if let location = placemark?.first?.location {
//                    if let data =  {
//                        self
//                    }
//                }
//                    DispatchQueue.main.async {
//                        self.CityTextField.reloadInputViews()
//                    }
//                }
//
//            }
//        }
//    
//    
//
// 
//}
//
//
//
