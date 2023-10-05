//
//  ChildView.swift
//  ThreadNode
//
//  Created by Константин Лопаткин on 04.10.2023.
//

import SwiftUI

struct RootView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ContentView(vm: vm, node: $vm.tree)
    }
}

#Preview {
    RootView()
}
