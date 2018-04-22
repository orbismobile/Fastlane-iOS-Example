fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios certificate
```
fastlane ios certificate
```
Generate Certificates for OrbisMobile
### ios adhoc
```
fastlane ios adhoc
```
This lane is for install the app via adhoc, example: fastlane adhoc version:1.0 build:1 tag:1.0-beta1
### ios test_flight
```
fastlane ios test_flight
```
Create a testflight, example: fastlane test_flight version:1.0 build:1 tag:1.0-beta1

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
