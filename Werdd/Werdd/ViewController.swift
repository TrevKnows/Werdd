//
//  ViewController.swift
//  Werdd
//
//  Created by Trevor Beaton on 3/12/22.
//

import UIKit

class ViewController: UIViewController {

    let helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
         label.textAlignment = .center
        label.backgroundColor = .purple
        label.font = UIFont(name: "Roboto-Regular", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()

    let submitButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 14
        return button
    }()
      
    let blueView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
        let orangeLabel: UILabel = {
            let label = UILabel()
            label.text = "Orange Label"
             label.textAlignment = .center
            label.textColor = .orange
            label.font = UIFont(name: "Roboto-Regular", size: 24)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.lineBreakMode = .byWordWrapping
            label.numberOfLines = 0
            return label
        }()
    
    let tealLabel: UILabel = {
        let label = UILabel()
        label.text = "Teal Label"
         label.textAlignment = .center
        label.textColor = .systemTeal
        label.font = UIFont(name: "Roboto-Regular", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    let greenLabel: UILabel = {
        let label = UILabel()
        label.text = "Green Label"
         label.textAlignment = .center
        label.textColor = .green
        label.font = UIFont(name: "Roboto-Regular", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
   
    let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupUI()
        print("View Loaded")

    }

    func setupUI(){
        setupBlueView()
        setupLabels()
        setUpSubmitButton()
    }
    
    func setUpSubmitButton() {
        
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            submitButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            submitButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8)
        ])
    }
    
    func setupLabels(){

        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor)
        ])
        
        stackView.addArrangedSubview(orangeLabel)
        stackView.addArrangedSubview(tealLabel)
        stackView.addArrangedSubview(greenLabel)
        
    }
    
    private func setupBlueView() {
        view.addSubview(blueView)
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            blueView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        blueView.addSubview(helloLabel)

        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: blueView.centerYAnchor),
        ])
    }
}

