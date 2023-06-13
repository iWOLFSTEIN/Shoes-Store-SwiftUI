//
//  RoundedCorners.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

struct RoundedCorners: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
