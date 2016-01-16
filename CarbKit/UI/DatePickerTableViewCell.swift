//
//  DatePickerTableViewCell.swift
//  Naterade
//
//  Created by Nathan Racklyeft on 1/15/16.
//  Copyright © 2016 Nathan Racklyeft. All rights reserved.
//

import UIKit

protocol DatePickerTableViewCellDelegate: class {
    func datePickerTableViewCellDidUpdateDate(cell: DatePickerTableViewCell)
}


class DatePickerTableViewCell: UITableViewCell {

    weak var delegate: DatePickerTableViewCellDelegate?

    var date: NSDate {
        get {
            return datePicker.date
        }
        set {
            datePicker.date = newValue
            dateChanged(datePicker)
        }
    }

    @IBOutlet weak var dateLabel: UILabel!

    @IBOutlet weak var datePicker: UIDatePicker!

    @IBOutlet weak var datePickerHeightConstraint: NSLayoutConstraint!

    @IBOutlet weak var datePickerSpacingConstraint: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()

        setSelected(true, animated: false)
        dateChanged(datePicker)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
            let closed = datePicker.hidden

            datePicker.hidden = !closed
            datePickerHeightConstraint.constant = closed ? 200 : 0
        }
    }

    @IBAction func dateChanged(sender: UIDatePicker) {
        dateLabel.text = NSDateFormatter.localizedStringFromDate(date, dateStyle: .ShortStyle, timeStyle: .ShortStyle)

        delegate?.datePickerTableViewCellDidUpdateDate(self)
    }
}
