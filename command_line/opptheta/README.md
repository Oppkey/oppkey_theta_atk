# opptheta

Command line tester for RICOH THETA API.

## usage

Connect RICOH THETA to computer with Wi-Fi in access point (AP) mode.
The THETA will be at 192.168.1.1.

```shell
opptheta\bin> dart .\opptheta.dart --help
RICOH THETA Live Preview tester

Usage: opptheta <command> [arguments]

Global options:
-h, --help    Print this usage information.

Available commands:
  checkForIdle       wait for camera to be idle after startCapture or self timer for next command  
  imageMode          Switch camera to image mode
  info               camera information, including model, serial number
  intervalShoot      test interval shooting with 2 sets of 2 shots
  listFiles          list video and image files on camera
  previewFormat      Set preview format
  printFrames        print frame bytes to console for testing
  saveFrames         save frames from live preview stream
  sc2SaveFrames      THETA SC2 save frames from live preview stream
  setOption          Set single camera option
  state              camera status, battery level, API version, last file URL
  takePicture        take single still image.  Camera must be in still image mode
  takePictureReady   take single still image and show when camera is ready for next    command      
  videoMode          Switch camera to video mode

Run "opptheta help <command>" for more information about a command.
```