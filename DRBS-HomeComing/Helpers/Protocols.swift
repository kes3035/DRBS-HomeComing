import UIKit
import CoreLocation

protocol CalendarDelegate: AnyObject {
    func dateSelected(date: Date)
}
protocol searchViewDelegate: AnyObject {
    func setRegion(cood: CLLocationCoordinate2D)
    func setTitle(title: String)
}
protocol CellSelectedDelegate: AnyObject {
    func cellselected(houseTVCell: HouseTVCell, house: House)
}
