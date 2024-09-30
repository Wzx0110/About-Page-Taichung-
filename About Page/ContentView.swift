//
//  ContentView.swift
//  About Page
//
//  Created by 翁子翔 on 2024/9/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.background)//背景
                .resizable()
                .opacity(0.6)
                .ignoresSafeArea()
            VStack {
                Text("About Taichung")//標題
                    .font(.custom("Casual-Regular", size: 36))
                    .offset(y: 30)
                TabView {
                    SiteView(picture: .高美濕地,            name: "高美濕地",
                             text: "高美野生動物保護區是臺灣西海岸一處生態保護區，位於臺中市清水區西側，包括大甲溪出海口，綜合淡水注水與潮汐交替所構成的海岸溼地。\n\n其前身原為海水浴場，自從臺中港北岸沙堤築起後，大甲溪挾帶泥沙於此，逐漸淤積成漂飛砂地帶，成為現今所見「高美濕地」。\n\n在保護區南北兩處有清水大排與大甲溪注入淡水，並以雲林莞草、大安水蓑衣兩種瀕危植物生長最受關注。",
                             url: "https://gaomei.com.tw",
                             location: "436035台灣台中市清水區美堤街235號",
                             phone: "+886 4-26565810")
                    SiteView(picture: .台中國家歌劇院,       name: "台中國家歌劇院",
                             text: "臺中國家歌劇院是一座人與藝術共生的劇場，是表演藝術、生活休憩與吸取新知的地方。\n\n每年的核心展演以三大系列節目配合節氣展開，包括：從藝術新觀點切入、運用新媒材跨域混搭的「NTT藝想春天」，輕鬆入門全齡共賞、音樂劇盛宴的「NTT夏日放／FUN時光」，無畏而有為、從歷史軌跡走出時代觀點的「NTT遇見巨人」，與所有觀眾一起從歌劇院出發，打開藝術之窗，看見全世界。\n\n除了大中小劇場展演外，歌劇院更自非典型劇場空間發展數位／音景藝術的主題展演，透過展演與國際交流，創造藝術經濟力，翻轉中臺灣。\n\n歌劇院未來將以科技為鑰，開啟表演藝術新視角，為現實生活擴增無限想像的可能，並持續完成「綠色劇場」永續願景，從智能場館建置、引進國內外觀點與趨勢、推動中部藝術生態系有機發展、擴增與深化藝術與民眾日常的連結，達到藝術即日常、與世界同行。",
                             url: "https://www.facebook.com/npac.ntt/",
                             location: "407025台灣台中市西屯區惠來路二段101號",
                             phone: "+886 4-22511777")
                    SiteView(picture: .國立台灣美術館,       name: "國立台灣美術館",
                             text: "國立臺灣美術館是中華民國唯一的國家級美術館，位於臺灣臺中市西區。\n\n1988年開館時為「臺灣省立美術館」，隸屬於臺灣省政府，1999年實行精省後，改隸行政院文化建設委員會，並改為現名。",
                             url: "http://www.ntmofa.gov.tw",
                             location: "403414台灣台中市西區五權西路一段2號",
                             phone: "+886 4-23723552")
                    SiteView(picture:                             .國立自然科學博物館,      name: "自然科學博物館",
                             text: "國立自然科學博物館，簡稱科博館，是位於臺灣臺中市北區的公立科學博物館，是中華民國國家十二項建設文化建設項下興建的首座科學博物館。\n\n本館館區由科學中心、太空劇場、生命科學廳、人類文化廳、地球環境廳與植物園所共同組成。\n\n每年參觀人數居臺灣博物館第二，平均三百萬人次左右。\n\n另有臺中市霧峰區的九二一地震教育園區、南投縣鹿谷鄉的鳳凰谷鳥園及竹山鎮的車籠埔斷層保存園區為科博館館外園區。",
                             url: "https://www.nmns.edu.tw/ch/",
                             location: "404023台灣台中市北區館前路1號",
                             phone: "+886 4-23226940")
                    SiteView(picture: .路思義教堂,           name: "路思義教堂",
                             text: "路思義教堂是一座位於台灣台中市西屯區東海大學的基督教禮拜堂，始建於1962年9月，並於1963年11月2日落成，為著名台灣建築師陳其寬與美國華裔建築師貝聿銘之作。",
                             url: "https://www.thu.edu.tw/web/about/detail.php?scid=89&sid=189",
                             location: "40704台中市西屯區台灣大道四段1727號",
                             phone: "+886 4-23508340")
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        }
    }
}

#Preview {
    ContentView()
}
