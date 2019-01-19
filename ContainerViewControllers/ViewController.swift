import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        self.title = "Container View Controllers"
    }
}

class LoadingViewController: UIViewController {
    private lazy var activityIndicator = UIActivityIndicatorView(style: .gray)
}

class ErrorViewController: UIViewController {
    private lazy var errorLabel = UILabel()
}

class ProductContentViewController: UIViewController {
    private lazy var productView = ProductView()
    
    class ProductView: UIView {
        
    }
}
