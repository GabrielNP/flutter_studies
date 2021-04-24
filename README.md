# Flutter Studies

A repo about flutter studies.


### Projects

* [Image Cropper](./imagecropper)

    An app that allows you to access smartphone camera, take a picture and crop the image.

* [Byte Bank](./bytebank)

    A digital bank app.

## Setup
### Flutter
1. Install Flutter

    Access [Oficial Flutter Doc](https://flutter.dev/docs/get-started/install) to see how to install it.

    If you are using Linux, you can run the following commands:

    ```
    sudo snap install flutter --classic
    ```
    ```bash
    # check if there are any dependencies you need to install

    flutter doctor
    ```
2. Update PATH environment
    
    Copy return of this command:
    ```bash
    flutter sdk-path
    ```
    Enter in your shell .rc file:
    ```bash
    nano ~/.bashrc
    ```
    And write:
    ```bash
    export PATH="$PATH:[PATH_OF_FLUTTER_GIT_DIRECTORY]/bin"

    # [PATH_OF_FLUTTER_GIT_DIRECTORY] => is the return you copied above
    ```
    After save refresh your terminal session:
    ```bash
    source ~/.bashrc
    ```
### Emulator 
##### *not required
1. [Download](https://developer.android.com/studio) and [install](https://developer.android.com/studio/install) Android Studio to access Android SDK

2. [Create emulator](https://developer.android.com/studio/run/managing-avds#createavd)

### IDE

1. VS Code
    
    Install the following extensions `dart-code.dart-code` and `dart-code.flutter`.

## How to run

Without emulator simple run:

```
flutter run
```
