
//  MyShape.swift
//  About Page
//
//  Created by 翁子翔 on 2024/9/25.
//

import SwiftUI

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.width * 0, y: rect.height * 0))
        path.addLine(to: CGPoint(x: rect.width * 1.0, y: rect.height * 0))
        path.addLine(to: CGPoint(x: rect.width * 0.75, y: rect.height * 1))
        path.addLine(to: CGPoint(x: rect.width * 0, y: rect.height * 1))
        path.closeSubpath()
        return path
    }
}

#Preview {
    MyShape()
        .frame(width:100, height:100)
        .foregroundStyle(Color.black)
}
