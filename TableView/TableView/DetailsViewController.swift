import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var developer: UILabel!
    @IBOutlet weak var year: UILabel!
    
    var selectedLanguage : Language?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        language.text = selectedLanguage?.language
        image.image = selectedLanguage?.image
        developer.text = selectedLanguage?.developer
        year.text = selectedLanguage?.year
    }
}
