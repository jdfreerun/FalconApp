//
//  TabController.swift
//  FalconApp
//
//  Created by McBook on 22.12.2022.
//

import SwiftUI

enum Tab {
    case main
    case products
    case bid
    case menu
}

class TabController: ObservableObject {
    @Published var activeTab = Tab.main

    func open(_ tab: Tab) {
        activeTab = tab
    }
}
