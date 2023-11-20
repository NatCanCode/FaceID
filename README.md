# FaceID
Introduction to FaceID and TouchID with SwiftUI

## Chest image video
https://github.com/NatCanCode/FaceID/assets/77299658/62de85e1-3162-466f-b77a-0599c8a81d70

## SFSymbol video
https://github.com/NatCanCode/FaceID/assets/77299658/39c1342d-0d09-450c-bcf1-7f15127cf4e5

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

## Resources:
#### It's all explained [here](https://www.hackingwithswift.com/books/ios-swiftui/using-touch-id-and-face-id-with-swiftui) 🙏


