TCProgressBar
=======================
Simple and clean progress bar.

## Demo
![alt text](https://github.com/talthent/TCProgressBar/blob/master/screenshots/screenshot.png "TCProgressBar")

## Installation

### Cocoapods

Install Cocoapods

```bash
$ gem install cocoapods
```

Add `TCProgressBar` in your `Podfile`.

```ruby
use_frameworks!

pod 'TCProgressBar'
```

Install the pod

```bash
$ pod install
```

### Manually

Copy `TCProgressBar` folder to your project. Enjoy.


## Usage

### Interface Builder
- Drag a `UIView` to you view, and change its class to `TCProgressBar`
![alt text](https://github.com/talthent/TCProgressBar/blob/master/screenshots/class.png "TCProgressBar")

- Click Attributes Inspector ![alt text](https://github.com/talthent/TCProgressBar/blob/master/screenshots/attributesInspector.png "TCProgressBar")
 and notice the new `Progress Bar` section on top
 
 ![alt text](https://github.com/talthent/TCProgressBar/blob/master/screenshots/inspectables.png "TCProgressBar")

Changes the values as you want and notice `TCProgressBar` dynamically changes.

### Code
- Create a new `TCProgressBar`
```swift
let progressBar = TCProgressBar(frame: CGRect(x: 0,
                                              y: 0,
                                              width: 200,
                                              height: 20))
```
- Set the values as you like
```swift
progressBar.outlineColor = .black
progressBar.outlineWidth = 2 
progressBar.spacing = 4
progressBar.progressColor = .darkGray
progressBar.backgroundColor = .lightGray
progressBar.value = 0.7
```
   
   - Add `TCProgressBar` to the view
```swift
self.view.addSubview(progressBar)
```
   
   That's it!

## LICENSE

TCProgressBar is available under the MIT license. See the LICENSE file for details.
