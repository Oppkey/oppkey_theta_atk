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
`maxThumbSize` of 640. [more information](docs/sc2/thumbnail_problem.md)  TODO: add summary of test to this repo.
