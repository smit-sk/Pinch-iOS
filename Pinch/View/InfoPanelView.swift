//
//  InfoPanelView.swift
//  Pinch
//
//  Created by SMIT KHOKHARIYA on 2024-02-14.
//

import SwiftUI

struct InfoPanelView: View {
    
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanVisible: Bool = false
    
    
    var body: some View {
        HStack{
            // MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1){
                    withAnimation(.easeOut){
                        isInfoPanVisible.toggle()
                    }
                }
            
            Spacer()
            // MARK - INFO PANEL
            
            HStack(spacing: 2){
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanVisible ? 1 : 0)
            
            Spacer()
        }
    }
}

struct InfoPanelView_Previewa: PreviewProvider {
     
 static var previews: some View  {
     InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
