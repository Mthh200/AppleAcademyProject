import SwiftUI

struct SectionButtonView2: View {
    
    let text: String
    let isSelected: Bool
    
    var body: some View {
            let textColor = getTextColor(isSelected: isSelected)
            let rectColor = getRectColor(isSelected: isSelected)
        
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(rectColor)
                    
                    .strokeBorder(Color(.tinta))
                    .frame(width: 90, height: 30)
                
                    .aspectRatio(contentMode: .fill)
                Text(text)
                    .font(.system(size: 14))
                    .foregroundStyle(textColor)
                    .frame(width: 90, height: 30)                
//            }
        }
        
    }
    
    func getRectColor(isSelected: Bool) -> Color {
        if (isSelected) {
            Color.tinta
        } else {
            Color.white
        }
    }
    func getTextColor(isSelected: Bool) -> Color {
        if (isSelected) {
            Color.white
        } else {
            Color.black
        }
    }
//    func getFontWeight(isSelected: Bool) {
//        if (isSelected){
//
//        }
//    }

}
