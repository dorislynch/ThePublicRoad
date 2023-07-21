
# react-native-the-public-road

## Getting started

`$ npm install react-native-the-public-road --save`

### Mostly automatic installation

`$ react-native link react-native-the-public-road`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-the-public-road` and add `RNThePublicRoad.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNThePublicRoad.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNThePublicRoadPackage;` to the imports at the top of the file
  - Add `new RNThePublicRoadPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-the-public-road'
  	project(':react-native-the-public-road').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-the-public-road/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-the-public-road')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNThePublicRoad.sln` in `node_modules/react-native-the-public-road/windows/RNThePublicRoad.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using The.Public.Road.RNThePublicRoad;` to the usings at the top of the file
  - Add `new RNThePublicRoadPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNThePublicRoad from 'react-native-the-public-road';

// TODO: What to do with the module?
RNThePublicRoad;
```
  