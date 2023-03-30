import SwiftUI

struct DocumentationBootCamp: View {
    // MARK: PROPERTIES
    @State var data: [String] = ["Apples" , "Bananas", "Oranges"]
    @State var showAlert: Bool = false

    // MARK: BODY

    // NKOSI - WORKING COPY - things to do:

    /*
     1) Fix title
     2) Fix Alert
     */
    var body: some View {
        NavigationView {
            ZStack {
                Color.red.ignoresSafeArea()

                foregroundLayeer

                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                    showAlert.toggle()

                    })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert")
            })
            }
        }
    }
    /// This is the foreground layer that holds a scrollview.
    private var foregroundLayeer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    // MARK: FUNCTIONS
    /// Gets an alert with a specified title
    ///
    ///  This function creates and returns an alert immediatlety. The alert will have a title  b ased on the text parameter but will Not have a message
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is  no additional message in this Alert
    /// - Parameter text: This is the tittle for the alert
    /// - Returns: Returns an alert with a ttitle
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
    // MARK: PREVIEW
struct DocumentationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootCamp()
    }
}
