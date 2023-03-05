//
//  RootView.swift
//  ImageCompressor
//
//  Created by Sumit Kumar on 05/03/23.
//

import SwiftUI
import PhotosUI

struct RootView: View {
    @State var pickerBool: Bool = false
    var images = [UIImage]()
    var body: some View {
        VStack {
            Image(systemName: "camera.viewfinder")
                .frame(width: 100, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .onTapGesture {
                    pickerBool.toggle()
                }
        }
        .sheet(isPresented: $pickerBool) {
            ImagePickerView(sourceType: .camera) { image in
                debugPrint("Image captured")
            }
        }
        .navigationTitle("Image Compressor")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
