//
//  View.swift
//  Shoes Store
//
//  Created by Talha on 13/06/2023.
//

import Foundation
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorners(radius: radius, corners: corners) )
    }
}
