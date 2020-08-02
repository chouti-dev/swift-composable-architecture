// Copyright © 2020 ChouTi. All rights reserved.

import Foundation

public extension Store where State: Equatable {
  var viewStore: ViewStore<State, Action> {
    ViewStore(self)
  }
}
