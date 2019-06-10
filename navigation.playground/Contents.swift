import SwiftUI
import PlaygroundSupport

struct Friend : Identifiable {
    var id: Int
    let name: String
}

struct ListExample : View {
    let friends: [Friend] = [.init(id:0, name: "Dal"), .init(id:1, name: "Mark"), .init(id:2, name: "Japan Guy")]
    var body: some View{
        NavigationView{
            List (friends) { friend in
                NavigationButton(destination:FriendDetail()) {
                    Text(friend.name)
                }
            }.navigationBarTitle(Text("A list of friends"))
        }
    }
}

struct FriendDetail : View {
    var body: some View{
        Text("Hello")
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ListExample())
