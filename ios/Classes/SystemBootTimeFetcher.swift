//
//  SystemBootTimeFetcher.swift
//  system_boot_time
//
//  Created by Gaoyang on 2022/4/11.
//

import Foundation

struct SystemBootTimeFetcher {
  static func fetch() -> Int {
    var ts = timespec()
    if #available(iOS 10.0, *) {
      clock_gettime(CLOCK_MONOTONIC, &ts)
    }
    return ts.tv_sec
  }
}
