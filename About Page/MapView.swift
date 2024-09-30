//
//  MapView.swift
//  About Page
//
//  Created by 翁子翔 on 2024/9/25.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {//座標
    static let 高美濕地 = CLLocationCoordinate2D(latitude: 24.311891, longitude: 120.549950)
    static let 台中國家歌劇院 = CLLocationCoordinate2D(latitude: 24.163004, longitude: 120.640762)
    static let 國立台灣美術館 = CLLocationCoordinate2D(latitude: 24.141193, longitude: 120.662971)
    static let 國立自然科學博物館 = CLLocationCoordinate2D(latitude: 24.157268, longitude: 120.666125)
    static let 路思義教堂 = CLLocationCoordinate2D(latitude: 24.178841, longitude: 120.600502)
}
struct MapView: View {
    let site: String
    
    var body: some View {
        Map(initialPosition: .region(region)) {
            if site == "高美濕地" {
                Marker("高美濕地", systemImage: "star", coordinate: .高美濕地)
            }
            else if site == "台中國家歌劇院" {
                Marker("台中國家歌劇院", systemImage: "star", coordinate: .台中國家歌劇院)
            }
            else if site == "國立台灣美術館" {
                Marker("國立台灣美術館", systemImage: "star", coordinate: .國立台灣美術館)
            }
            else if site == "自然科學博物館" {
                Marker("國立自然科學博物館", systemImage: "star", coordinate: .國立自然科學博物館)
            }
            else {
                Marker("路思義教堂", systemImage: "star", coordinate: .路思義教堂)
            }
        }
    }
    private var region: MKCoordinateRegion {//設定地圖顯示的範圍
        if site == "高美濕地" {
            MKCoordinateRegion(center: .高美濕地, latitudinalMeters: 500, longitudinalMeters: 500)
        }
        else if site == "台中國家歌劇院" {
            MKCoordinateRegion(center: .台中國家歌劇院, latitudinalMeters: 500, longitudinalMeters: 500)
        }
        else if site == "國立台灣美術館" {
            MKCoordinateRegion(center: .國立台灣美術館, latitudinalMeters: 500, longitudinalMeters: 500)
        }
        else if site == "自然科學博物館" {
            MKCoordinateRegion(center: .國立自然科學博物館, latitudinalMeters: 500, longitudinalMeters: 500)
        }
        else {
            MKCoordinateRegion(center: .路思義教堂, latitudinalMeters: 500, longitudinalMeters: 500)
        }
    }
    
}
