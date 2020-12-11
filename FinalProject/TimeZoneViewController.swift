

import UIKit

class TimeZoneViewController: UIViewController {
   
    var TimeZone: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    func numberOfComponents(in tableView: UIPickerView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TimeZone.count
    }
    
   
    
}
