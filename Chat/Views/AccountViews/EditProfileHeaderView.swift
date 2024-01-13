//
//  EditProfileHeaderView.swift
//  Chat
//
//  Created by Pedro Thomas on 1/12/24.
//

import SwiftUI
import PhotosUI

struct EditProfileHeaderView: View {
    @State var name: String = "James Howlett"
    @StateObject var vm = PhotoPickerViewModel()
    
    var body: some View {
        VStack {
            VStack {
                PhotosPicker(selection: $vm.selectedItem) {
                    if let profilePic = vm.profilePic {
                        profilePic
                            .resizable()
                            .scaledToFill()
                            .frame(width: 125, height: 125)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 125, height: 125)                    }
                }
                
                Button("Edit") {
                    //
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                Text("Name:")
                
                TextField("", text: $name)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct EditProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileHeaderView()
    }
}

class PhotoPickerViewModel: ObservableObject {
    
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { try await loadImage() } }
        
    }
    
    @Published var profilePic: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return}
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profilePic = Image(uiImage: uiImage)
    }
    
}
