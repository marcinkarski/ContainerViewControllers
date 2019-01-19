import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        self.title = "Container View Controllers"
        let child = LoadingViewController()
        parent?.addChild(child)
    }
}

class LoadingViewController: UIViewController {
    
    private lazy var activityIndicator = UIActivityIndicatorView(style: .gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        NSLayoutConstraint.activate([activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.activityIndicator.startAnimating()
        }
    }
}
