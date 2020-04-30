# Hound, an iOS app

Your New Happy Hour Companion.

## Dependencies

This project uses CocoaPods to manage dependencies, so be sure to use the workspace file, not the project file. Hound uses the miso-specs repository for custom Miso CocoaPods specs. 

To set up the Miso CocoaPods specs, run the following command:

    pod repo add custom https://github.com/bazaarlabs/miso-specs.git
    
After adding dependencies to the Podfile, run the following command:

    pod install
    
For more information about using CocoaPods, check out their [Wiki][2].

[1]: http://gethound.com/
[2]: https://github.com/CocoaPods/CocoaPods/wiki
