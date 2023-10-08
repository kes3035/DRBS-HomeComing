import UIKit
import MapKit
import SnapKit
import Then

class AnnotationView: MKAnnotationView {
    //MARK: - Properties
    private lazy var customImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
    }

    //MARK: - LifeCycle
    override init(annotation: MKAnnotation?, reuseIdentifier: String?){
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // 어노테이션도 재사용되므로 재사용을 위해 값들을 초기화할 필요가 있음
    override func prepareForReuse() {
        super.prepareForReuse()
        customImageView.image = nil
    }
    
    // 뷰에서 표시되기 전에 호출
    override func prepareForDisplay() {
        super.prepareForDisplay()
        guard let annotation = annotation as? House else { return }
        guard let isBookMarked = annotation.isBookMarked else { return }
        if isBookMarked {
            self.customImageView.image = UIImage(named: "testb1.png")
        } else {
            self.customImageView.image = UIImage(named: "test1.png")
        }
        
        // 이미지의 크기와 레이블 사이즈가 변경될 수 있다.
        setNeedsLayout()
        //drawing Life Cycle:
        //setNeedsLayout을 통해 다음 런루프에서 레이아웃 업데이트 예약
        //layoutSubviews을 통해 레이아웃 업데이트
        //layoutSubviews를 사용하기 위해 setNeedLayout도 같이 사용해야함
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        bounds.size = CGSize(width: 30, height: 30)
        centerOffset = CGPoint(x: 0, y: 15)
    }
    
    
    //MARK: - Helpers
    private func configureUI() {
        self.addSubview(customImageView)
        customImageView.snp.makeConstraints { 
            $0.width.height.equalTo(30)
        }
    }
}
