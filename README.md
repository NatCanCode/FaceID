# FaceID
Introduction to FaceID and TouchID with SwiftUI

## Add a new key to your project options:
- [x] Select your current target
- [x] Go to the Info tab
- [x] Right-click on an existing key, then choose Add Row
- [x] Scroll through the list of keys until you find “Privacy - Face ID Usage Description” and give it the value “We need to unlock your data.”

## Add this import at the top of your SwiftUI file:
```
import LocalAuthentication
```

## Write an authenticate() method that isolates all the biometric functionality in a single place

## Connect the authenticate() method to SwiftUI adding some state and an onAppear() modifier to trigger authentication:
```
@State private var isUnlocked = false
```
```
isUnlocked = true
```
## When the simulator is launched, select: 
- [x] Features
- [x] FaceID
- [x] Enroll
##### And then
- [x] Features
- [x] FaceID
- [x] Matching Face

| Chest images           | SFSymbols          | 
:-------------------------:|:-------------------------:
| [![Watch the video](https://github.com/NatCanCode/FaceID/assets/77299658/71dbb4bb-6aaf-4196-8170-7fd58b2476e0)] | [![Watch the video](https://github.com/NatCanCode/FaceID/assets/77299658/0adbf3b9-d48e-4b6f-9ffd-9c3a49888f91)] |




