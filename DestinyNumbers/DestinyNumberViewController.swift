//
//  DestinyNumberViewController.swift
//  DestinyNumbers
//
//  Created by burnsoft on 6/7/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

import UIKit

class DestinyNumberViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtMiddleName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!

    private var myNumber = ""
    private var myMeaning = ""

    // MARK: View Did Load
    //When the View first Appears
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapReceived(_:)))
        tapGestureRecognizer.delegate = self
        view.addGestureRecognizer(tapGestureRecognizer)

        setBackGroundImage()
    }

    // MARK: View Did Appear
    //actions to take when the view appears again
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myNumber = ""
        myMeaning = ""
        txtFirstName.text = ""
        txtMiddleName.text = ""
        txtLastName.text = ""
    }

    // MARK: View Will Appear
    //when the view reappears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setBackGroundImage()
    }

    // MARK: View Did Layout Subviews
    //when the screen is reorientated to another angle
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setBackGroundImage()
    }

    // MARK: Tap Recieved
    //dissmiss the keyboard when the view is touched.
    @objc private func tapReceived(_ tapGestureRecognizer: UITapGestureRecognizer) {
        txtLastName.resignFirstResponder()
        txtMiddleName.resignFirstResponder()
        txtFirstName.resignFirstResponder()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResults",
           let myResults = segue.destination as? DestinyResultsViewController {
            myResults.pushMeaning = myMeaning
            myResults.yourNumber = myNumber
        }
    }

    // MARK: Get Meaning Button
    //action to take when button is touched
    @IBAction func getMeaning(_ sender: Any) {
        view.endEditing(true)
        let dn = DestinyNumbers()

        let fn = dn.getNumber(txtFirstName.text ?? "")
        let mn = dn.getNumber(txtMiddleName.text ?? "")
        let ln = dn.getNumber(txtLastName.text ?? "")

        let iTotal = fn + mn + ln

        myNumber = "Your Destiny Number is: \(iTotal)"
        myMeaning = dn.getMeaning(iTotal)

        performSegue(withIdentifier: "segueResults", sender: self)
    }

    // MARK: Set Background Image
    //set the background image of the view
    private func setBackGroundImage() {
        view.backgroundColor = UIColor.backgroundPattern(for: view)
    }
}
