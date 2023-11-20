//
//  ContentView.swift
//  FaceID
//
//  Created by N N on 20/11/2023.
//

import SwiftUI
import LocalAuthentication
// Simulator: Features > FaceID > Enrolled

struct ContentView: View {

    @State private var isUnlocked = false // FaceID and TouchID

    var body: some View {
        VStack(spacing: 50) {
                if isUnlocked {
                    Text("Application unlocked")
                        .font(.title)

                    ZStack {
                        Circle()
                            .stroke(Color.green, lineWidth: 6)
                            .frame(width: 130, height: 130)
                        Image("chest-unlocked")
                            .resizable()
                            .frame(width: 80, height: 80)
                    }

                    Button {
                        isUnlocked = true
                    } label: {
                        Text("Lock")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                } else {
                    Text("Application locked")
                        .font(.title)

                    ZStack {
                        Circle()
                            .stroke(Color.red, lineWidth: 6)
                            .frame(width: 130, height: 130)
                        Image("chest-locked")
                            .resizable()
                            .frame(width: 80, height: 80)
                    }

                    Button {
                        authenticate()
                    } label: {
                        Text("Unlock")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                }
            }
//            .onAppear(perform: authenticate)
        }

    // FaceID authentification
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data"

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authentificationError in
                if success {
                    self.isUnlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometrics
        }
    }
}
//    func authenticate() {
//        let context = LAContext()
//        var error: NSError?
//
//        // check whether biometric authentication is possible
//        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
//            // it's possible, so go ahead and use it
//            let reason = "We need to unlock your data." // Used with TouchID
//
//            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
//                // authentication has now completed
//                if success {
//                    // authenticated successfully
//                    isUnlocked = true
//                } else {
//                    // there was a problem
//                }
//            }
//        } else {
//            // no biometrics in device used or biometrics not enrolled in device used
//            // Simulator: 1/ Features > FaceID > Enrolled & 2/ Features > FaceID > Matching face
//        }
//    }

#Preview {
    ContentView()
}
