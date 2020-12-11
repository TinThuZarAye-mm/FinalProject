

import UIKit

struct selectWeatherOrTimeZone {
    let name: String
}



class WelcomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
  
    
    
    @IBOutlet weak var WeatherOrTimeZone: UIPickerView!
    
    @IBOutlet weak var LocationTextField: UITextField!
    
    @IBOutlet weak var LocationUpdateTextField: UITextField!

    @IBOutlet weak var CheckTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome!!"
        
        
        WeatherOrTimeZone.delegate = self
        WeatherOrTimeZone.dataSource = self
        LocationTextField.delegate = self
        LocationUpdateTextField.delegate = self
        CheckTextField.delegate = self
             
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let text = LocationTextField.text
        print(text!)
        return true
    }
    
    
    
    
    var select: [selectWeatherOrTimeZone] = [ selectWeatherOrTimeZone(name: "☀️ Weather"),
        selectWeatherOrTimeZone(name: "⏰ TimeZone")]
    
    
    
    
    @IBAction func ButtomClicked(_ sender: Any) {
        
        LocationUpdateTextField.text = "Check the Weather and TimeZone of \(LocationTextField.text!)"
    }
        
 
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
  
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return select.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return select[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        CheckTextField.text = "Check: \(LocationTextField.text!)\'s \(select[row].name)"
    }
   
      @IBAction func ButtomClickedWeatherSegue(_ sender: Any) {
        
        if select[0].name == "☀️ Weather" {
            performSegue(withIdentifier: "WeatherSegue", sender: nil)
            
            
        } 
    }
    
    
    @IBAction func ButtomClickedTimeZoneSegue(_ sender: Any) {
        
        if select[1].name == "⏰ TimeZone" {
            performSegue(withIdentifier: "TimeZoneSegue", sender: nil)
        }
    }
    
}

