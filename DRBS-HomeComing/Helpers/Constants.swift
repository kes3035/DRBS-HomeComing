import UIKit


struct Constant {
    static let appColor: UIColor = UIColor(red: 0.12, green: 0.27, blue: 0.56, alpha: 1.00)
    static let font = "Pretendard-Bold"
    enum Identifier: String {
        case houseCell = "HouseCell"
        case apartCell = "ApartCell"
        case oneroomCell = "OneroomCell"
        case officeCell = "OfficeCell"
        case searchCell = "SearchCell"
        case annotationView = "AnnotaionView"
        case bookmarkedAnnotationView = "BookMarkedAnnotationView"
        case topCell = "TopCell"
    }
    
    enum livingType: String {
        case 아파트
        case 원룸
        case 오피스텔
        case 주택
    }
    
    enum tradingType: String {
        case 월세
        case 전세
        case 매매
        case 분양
    }
    
    enum 관리비미포함목록: String {
        case 인터넷
        case 전기세
        case 수도세
        case 가스비
        case 기타
    }
    
    enum 방향: String {
        case 남향
        case 동향
        case 북향
        case 서향
    }
    
    enum 방음: String {
        case 우수
        case 보통
        case 미흡
    }
    
    enum 수압: String {
        case 우수
        case 보통
        case 미흡
    }
    enum 벌레: String {
        case 있음
        case 모름
        case 없음
    }
    enum 통풍: String {
        case 쾌적
        case 보통
        case 불쾌
    }
    enum 보안: String {
        case 철저
        case 보통
        case 미흡
    }
    enum 곰팡이: String {
        case 있음
        case 없음
    }
    
    /**
     # (E) PopupPosition
     - Author: suni
     - Date:
     - Note: PopupVC에 애니메이션 시작 포지션을 정하는 enum
     */
    enum PopupPosition: String {
        case top = "Top"
        case bottom = "Bottom"
        case left = "Left"
        case right = "Rigth"
        case center = "Center"
        case none = ""
    }

    /**
     # (E) PopupType
     - Author: suni
     - Date:
     - Note: PopupVC에 애니메이션 타입을 모아둔 enum
     */
    enum PopupType: String {
        case fadeInOut = "Fade In Out"
        case move = "Move"
        case none = ""
    }
   
}

class KeyedButton: UIButton {
    var key: String?
}
