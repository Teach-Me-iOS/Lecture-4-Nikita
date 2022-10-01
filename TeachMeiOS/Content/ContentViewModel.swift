//
//  ContentViewModel.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 24.09.2022.
//

import Foundation
import SwiftUI

struct ContentViewModel {
    let commands = ContentModel.Command.allCases

    var favorites = [ContentModel.Command]()
}
