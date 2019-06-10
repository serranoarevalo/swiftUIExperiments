import SwiftUI
import PlaygroundSupport

struct DefaultView: View{
    @State var counter = 0
    @State var showingModal = false
    var body: some View {
        VStack {
            Text("The number is")
            Text("\(counter)").font(.largeTitle)
            HStack {
                Group{
                    Button(action: incrementButton){
                    Text("Plus").color(Color.white).padding(5)
                    }
                }.background(Color.blue).clipShape(RoundedRectangle(cornerRadius: 5))
                Group{
                    Button(action: decrementButton) {
                        Text("Minus").color(Color.white).padding(5)
                    }
                }.background(Color.blue).clipShape(RoundedRectangle(cornerRadius: 5))
            }
            
        }
    }
    func incrementButton(){
        counter = counter + 1
    }
    func decrementButton(){
        counter = counter - 1
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: DefaultView())
