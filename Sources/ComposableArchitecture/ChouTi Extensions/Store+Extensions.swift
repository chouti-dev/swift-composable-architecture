// Copyright © 2020 ChouTi. All rights reserved.

import Foundation

extension Store where State: Equatable {
  public var viewStore: ViewStore<State, Action> {
    ViewStore(self)
  }
}
