# opptheta

Command line tester for RICOH THETA API.

## installation

1. Clone repository from GitHub
2. cd into command_line/opptheta
3. run dart pub get

(You can run pub get command but you will get a message saying "The top level `pub.bat` command is deprecated. Use `dart pub` instead." )

```
ricoh\oppkey_theta_atk\command_line\opptheta> pub get
Resolving dependencies...
< theta 0.0.1 from path packages\theta (was 1.0.0 from path packages\theta)
Changed 1 dependency!
```

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

## Decoding Thumbnails

On Linux or WSL, follow these steps:

1. copy and paste the thumbnail data into a file named image.txt
2. run the command below
3. open file in file browser

```
base64 -d image.txt > image.jpg
```

There are many online tools.

https://www.base64decode.org/

## sc2 thumbnails

Last tested October 7, 2021.

As of firmware 1.64, there seems to be a bug in the SC2 API to get thumbnails from `camera.listFiles`. A workaround is required to get
thumbs from the SC2.

The workaround is in the theta package `lib/src/sc2_thumb_get_bytes`.  You can test the
functionality with the following command.

```
 dart .\opptheta.dart thumb --sc2=true --save=5
```

Here is the process to add the SC2 thumbs to your own application.

1. use camera.listFiles to get a listing of the files on the camera.  Pass the number of thumbs you want to get.
2. parse results -> entries
3. loop through the entries and extract `fileUrl`.  Add it to a list.
4. go through the fileUrlList and use and HTTP GET request with this URL fileUrl?type=thumb
5. the thumb will be in bytes.  You may want to convert it to base64 if you want to use the same code you have for the Z1 and V thumbnail processing

Alternately, you can use the algorithm above for the Z1 and V models.

Note that since you are making multiple HTTP requests, the SC2 may lock up if you open and close many HTTP GET requests in sequence.

The solution is to follow this process:

1. open HTTP client session
2. send all GET requests through the same client session
3. close HTTP client session after you have all your thumbnails

Refer to the theta package for a working example.


## Development Contribution

### Build binaries for release

Desired binaries in order of priority.

* Windows
* Mac

If there is time

* Linux x86

Optional

* Linux ARM (for Raspberry Pi and Jetson Nano)

#### Linux

```
pwd
oppkey_theta_atk/command_line/opptheta
ls
analysis_options.yaml  bin  build  CHANGELOG.md  lib  packages  pubspec.lock  pubspec.yaml  README.md

$ dart compile exe bin/opptheta.dart -o build/opptheta_linux_0.3_pre 
Info: Compiling with sound null safety
Generated: /home/craig/Development/ricoh/oppkey_theta_atk/command_line/opptheta/build/opptheta_linux_0.3_pre
```
#### Windows
Using Windows PowerShell

```
pwd
oppkey_theta_atk/command_line/opptheta

ls
analysis_options.yaml  bin  build  CHANGELOG.md  lib  packages  pubspec.lock  pubspec.yaml  README.md

$ dart compile exe bin/opptheta.dart -o build/opptheta_windows_0.3_pre.exe 
Info: Compiling with sound null safety
Generated: c:\users\jcasm\development\oppkey_theta_atk\command_line\opptheta\build\opptheta_windows_0.3_pre.exe
```

