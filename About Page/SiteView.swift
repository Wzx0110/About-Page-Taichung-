//
//  SiteView.swift
//  About Page
//
//  Created by 翁子翔 on 2024/9/26.
//


import SwiftUI
import MapKit

struct SiteView: View {
    let picture: ImageResource
    let name: String
    let text: String
    let url: String
    let location: String
    let phone: String
    @State private var isHeartFilled: Bool = false // 記錄愛心狀態
    
    var body: some View {
        VStack {
            MapView(site: name)//地圖
                .frame(height: 300)
                .offset(y: -80)
            Group {//圓形景點
                Circle()
                    .frame(width: 210)
                    .foregroundStyle(.white)
                    .offset(y: -200)
                    .padding(.bottom, -200)
                    .shadow(radius: 5)
                Image(picture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(.circle)
                    .offset(y: -212)
                    .padding(.bottom, -200)
            }
            Image(systemName: isHeartFilled ? "heart.fill" : "heart")//愛心
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(isHeartFilled ? .red : .gray)
                .onTapGesture {
                    isHeartFilled.toggle()//點擊時切換狀態
                }
                .symbolEffect(.wiggle)//擺動
                .offset(x: 160, y: -310)
                .padding(.bottom, -300)
            VStack(alignment: .leading) {
                ZStack {//名稱
                    MyShape()
                        .frame(width: 200, height: 50)
                        .foregroundStyle(.yellow).opacity(0.6)
                    Text(name)
                        .font(.custom("kurobara-gothic-regular", size: 20))
                        .fontWeight(.bold)
                        .offset(x: -10)
                }
                .offset(y: -30)
                Divider()
                ScrollView(.vertical){//介紹
                    Text(text)
                }
                .frame(height: 110)
                .padding(.horizontal, 5)
                Divider()
                Group {//其他
                    HStack {
                        Image(systemName: "safari")
                        Text(try! AttributedString(markdown: "[\(url)](\(url))"))
                    }
                    HStack {
                        Image(systemName: "location")
                        Text(location)
                    }
                    HStack {
                        Image(systemName: "phone")
                        Link(phone, destination: URL(string: "tel:\(phone)")!)
                    }
                }
                .offset(y: 10)
                .padding(.horizontal, 5)
            }
            .offset(y: -50)
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 30))
        .frame(width: 380, height: 600)
        .padding()
        .shadow(radius: 5)
    }
}

#Preview {//test
    SiteView(picture: .高美濕地,
             name: "高美濕地",
             text:"高美野生動物保護區是臺灣西海岸一處生態保護區，位於臺中市清水區西側，包括大甲溪出海口，綜合淡水注水與潮汐交替所構成的海岸溼地。\n\n其前身原為海水浴場，自從臺中港北岸沙堤築起後，大甲溪挾帶泥沙於此，逐漸淤積成漂飛砂地帶，成為現今所見「高美濕地」。\n\n在保護區南北兩處有清水大排與大甲溪注入淡水，並以雲林莞草、大安水蓑衣兩種瀕危植物生長最受關注。",
             url: "https://gaomei.com.tw",
             location: "436035台灣台中市清水區美堤街235號",
             phone: "+886 4-26565810")
    
}
