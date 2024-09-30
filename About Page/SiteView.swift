import SwiftUI
import MapKit

struct SiteView: View {
    let picture: ImageResource
    let name: String
    let text: String
    let url: String
    let location: String
    let phone: String
    
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .offset(y: -80)
            Circle()
                .frame(width: 210)
                .foregroundStyle(.white)
                .offset(y: -200)
                .padding(.bottom, -200)
                .shadow(radius: 5)
            Image(picture)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height:  200)
                .clipShape(.circle)
                .offset(y: -213)
                .padding(.bottom, -200)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                Spacer()
                ScrollView(.vertical){
                    Text(text)
                        .font(.body)
                }
                //Spacer()
                HStack {
                    Image(systemName: "safari")
                    Link(url, destination: URL(string: url)!)
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
            .offset(y: -50)
        }
        .border(Color.black, width: 1)
        .background(.white)
        .clipShape(.rect(cornerRadius: 30))
        .frame(width: 380, height: 600)
        .padding()
        .shadow(radius: 5)
    }
}