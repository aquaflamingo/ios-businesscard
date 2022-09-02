
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.18, green: 0.80, blue: 0.44)                .ignoresSafeArea(.all)
            
            VStack {
                Image("ricky").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: .top)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Ricky LaFluer")
                    .font(Font.custom("Montserrat-Regular", size: 25))
                    .foregroundColor(Color.white)
                Text("Trailer Park Supervisor")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text:"+1 555-555-5555", image: "phone.fill")
                InfoView(text:"ricky@tpb.com", image: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 250)
            .frame(height: 50, alignment: .top)
            .foregroundColor(Color.white)
            .overlay(
                HStack {
                    Image(systemName: image)
                        .foregroundColor(Color.green)
                    Text(text)
                })
            .padding()
    }
}
