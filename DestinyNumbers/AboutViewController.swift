//
//  AboutViewController.swift
//  DestinyNumbers
//
//  Created by burnsoft on 6/7/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    // MARK: View Did Load
    //When the View first Appears
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackGroundImage()
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

    // MARK: Set Background Image
    //set the background image of the view
    private func setBackGroundImage() {
        view.backgroundColor = UIColor.backgroundPattern(for: view)
    }
}

extension UIColor {
    /// Draws "background.jpg" scaled to the view's bounds and returns it as a pattern color.
    @MainActor
    static func backgroundPattern(for view: UIView) -> UIColor? {
        guard let background = UIImage(named: "background.jpg"),
              view.bounds.width > 0, view.bounds.height > 0 else { return nil }
        let image = UIGraphicsImageRenderer(size: view.bounds.size).image { _ in
            background.draw(in: view.bounds)
        }
        return UIColor(patternImage: image)
    }
}
