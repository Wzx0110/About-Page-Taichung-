//
//  Untitled.swift
//  About Page
//
//  Created by 翁子翔 on 2024/9/25.
//
import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let 高美濕地 = CLLocationCoordinate2D(latitude: 24.311891, longitude: 120.549950)
}
struct Map1View: View {
    var body: some View {
        Map(initialPosition: .region(region)) {
            //加入氣球形狀的標記 — Marker
            /*
            Annotation("台中歌劇院", coordinate: .台中歌劇院) {
                            Image(systemName: "theatermasks.fill")
                                .padding()
                                .background {
                                    Circle()
                                        .foregroundStyle(.purple)
                                        .frame(width: 30)
                                }
                        }
             */
            Marker("高美濕地", systemImage: "star", coordinate: .高美濕地)
        }
    }
    private var region: MKCoordinateRegion {//設定地圖顯示的範圍
            MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.311891, longitude: 120.549950), latitudinalMeters: 500, longitudinalMeters: 500)
        }
}



