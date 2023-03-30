//
//  ActionSheetbootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/20.
//

import SwiftUI

struct ActionSheetbootCamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    @State var viewingTitle = "Viewing No Posts"
    enum ActionSheetOptions {
        case isOtherPost
        case isMyPost
    }
    var body: some View {
//        Button("Click me"){
//            showActionSheet.toggle()
//        }
          VStack {
              Text(viewingTitle)
              HStack {
                  Button("My Posts"){
                      viewingTitle = "Viewing My Posts"
                      actionSheetOption = .isMyPost
                   }
                  .foregroundColor(.green)
                  Spacer()
                  Button("Others Post"){
                      viewingTitle = "Viewing Others Posts"
                      actionSheetOption = .isOtherPost
                   }
                  .foregroundColor(.pink)
              }


            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    func getActionSheet() -> ActionSheet {
        //return ActionSheet(title: Text("This is the title"))
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()


//        return ActionSheet(title: Text("This is the title"),
//                           message: Text("This is the message"),
//                           buttons: [button1,button2,button3])

        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add the code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add the code to delete this post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        switch actionSheetOption {
        case .isOtherPost:
                return ActionSheet(title: title, message: nil, buttons: [shareButton,reportButton,cancelButton])
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton,deleteButton, cancelButton])

        }
    }
}

struct ActionSheetbootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetbootCamp()
    }
}
