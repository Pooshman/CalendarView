//
//  MCalendar.swift of CalendarView
//
//  Created by Alina Petrovska on 26.10.2023.
//    - Mail: alina.petrovskaya@mijick.com
//    - GitHub: https://github.com/Mijick
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import Foundation

struct MCalendar {
    static var startDate: Date = .now.start(of: .month)
    // PERFORMANCE FIX: Limit to 12 months instead of distant future
    static var endDate: Date = Calendar.current.date(byAdding: .month, value: 12, to: .now) ?? .now
    static var firstWeekday: MWeekday = .monday
    static var locale: Locale = .autoupdatingCurrent
    private static var _calendar: Calendar = .init(identifier: .gregorian)


    private init() {}
}

extension MCalendar {
    static func get() -> Calendar { _calendar }
}
