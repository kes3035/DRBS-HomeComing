import UIKit
import CoreLocation

protocol CalendarDelegate: AnyObject {
    func dateSelected(date: Date)
}
protocol searchViewDelegate: AnyObject {
    func setRegionAndTitle(cood: CLLocationCoordinate2D?, title: String?)
}
protocol CellSelectedDelegate: AnyObject {
    func cellselected(houseTVCell: HouseTVCell, house: House)
}
