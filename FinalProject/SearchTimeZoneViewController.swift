
import UIKit

class SearchTimeZoneViewController: UIViewController {
 
    
    @IBOutlet weak var CityLable: UILabel!
    @IBOutlet weak var TimeZoneLable: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//    func set() {
//        TimeZoneLable.text = get()
//    }
    
    func get() -> String {
        var timeforLocation = ""
        
        if CityLable.text != "" {
            let date = DateFormatter()
            date.timeZone = TimeZone(identifier: CityLable.text!)
            let time = Date()
             timeforLocation = date.string(from: time)
        }
        
        return timeforLocation
    }
}
