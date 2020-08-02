// Copyright © 2020 ChouTi. All rights reserved.

import Combine
import Foundation

extension Effect where Failure == Never {

  /// A time that fires immediately.
  /// The default timer starts after the internal.
  public static func immediateTimer<S>(
    id: AnyHashable,
    every interval: S.SchedulerTimeType.Stride,
    tolerance: S.SchedulerTimeType.Stride? = nil,
    on scheduler: S,
    options: S.SchedulerOptions? = nil
  ) -> Effect where S: Scheduler, S.SchedulerTimeType == Output {
    Effect.merge(
      Effect(value: scheduler.now),
      Effect.timer(id: id, every: interval, tolerance: tolerance, on: scheduler, options: options)
    )
  }
}
