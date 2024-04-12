//
//  ViewController.swift
//  UIDraw
//
//  Created by enTrust Title on 2024-04-11.
//

import UIKit

class ViewController: UIViewController {

    var sAreaView: UILayoutGuide!
    
    let uiView: UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .white
        return v
    }()
    
    let uiButton: UIButton = {
       let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle("Navigation", for: .normal)
        b.setTitleColor(.blue, for: .normal)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Welcome"
        
        
        uiButton.addTarget(self, action: #selector(navClick), for: .touchUpInside)
        
        sAreaView = view.safeAreaLayoutGuide
        view.backgroundColor = .white
        uiView.addSubview(uiButton)
        view.addSubview(uiView)
        
        NSLayoutConstraint.activate([
            uiView.topAnchor.constraint(equalTo: sAreaView.topAnchor, constant: 0),
            uiView.leftAnchor.constraint(equalTo: sAreaView.leftAnchor, constant: 0),
            uiView.rightAnchor.constraint(equalTo: sAreaView.rightAnchor, constant: 0),
            uiView.bottomAnchor.constraint(equalTo: sAreaView.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            uiButton.topAnchor.constraint(equalTo: sAreaView.topAnchor, constant: 10),
            uiButton.leftAnchor.constraint(equalTo: sAreaView.leftAnchor, constant: 10),
            uiButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        
    }

    @objc func navClick(){
        print("Pressed")
        let pVC = PrimaryViewController()
        self.navigationController?.pushViewController(pVC, animated: true)
    }

}

