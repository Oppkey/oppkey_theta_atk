# Oppkey THETA API Test Kit

API test kit for RICOH THETA camera developers.

Tools to test the [RICOH THETA Web API](https://api.ricoh/docs/theta-web-api-v2.1/) on different
camera models.

## Contents

* theta - Dart library for the RICOH THETA Web API
* opptheta - command line tester built on the theta library.
Runs natively on Linux,
Windows, Mac as well as platforms such as Raspberry Pi and
NVIDIA Jetson
* thetaf - Flutter widgets for elements such as
displaying live preview on RICOH THETA cameras
* oppkey_theta_atk_flutter - demonstration of using the theta
and thetaf packages on mobile or desktop applications

## Summary of Findings

* SC2 API to get thumbnails is broken when using `camera.listFiles` and
`maxThumbSize` of 640. [more information](docs/sc2/thumbnail_problem.md)  TODO: add summary of test to this repo and workaround
* SC2 live preview stops when other API commands are given. TODO: test
* cannot set preview parameters of SC2 live preview. TODO: test and document
* SC2 camera._getMetadata API not working properly: TODO: update test with newest firmware
* SC2 takes longer to be ready for next command, likely due to slower CPU. TODO: test camera status
*  SC2 `/osc/commands/status` not working as expected with bracket shooting "ready for next command"

## Tips and HowTo

* using the API with my settings