//
//  AlertBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/20.
//

import SwiftUI

struct AlertBootCamp: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    @State var alertType: myAlert? = nil

//    @State var alertMessage: String = ""
//    @State var alertTitle: String = ""

    enum myAlert {
        case error
        case success
    }
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)

            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "SUCCESSFULY UPLOADING VIDEO"
//                    alertMessage = "The video was succsessfuly uploaded"
                    showAlert.toggle()
                }


            }
            .alert(isPresented: $showAlert) {
                //Alert(title: Text("There was an error!"))
                getAlert()
            }
        }
    }

    func getAlert() -> Alert {
//        return Alert(title: Text("This is the title"), message: Text("Here we will describe the error"), primaryButton: .destructive(Text("Delete"), action: {
//            backgroundColor = .red
//        }), secondaryButton: .cancel())

        //return Alert(title: Text(alertTitle), message: Text(alertMessage))

        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default: return Alert(title: Text ("Error"))
        }
    }
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
