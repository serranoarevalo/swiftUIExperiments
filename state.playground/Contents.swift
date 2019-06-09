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
                Button(action: incrementButton){
                    Text("Plus")
                }
                Button(action: decrementButton) {
                    Text("Minus")
                }
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
