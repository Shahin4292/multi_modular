# multi_modular

A new Flutter project.

## How to create a module?
1- create directory
--> mkdir core

2- --> cd core

3- --> flutter create --template=package enter_module_name_here

4- --> flutter create --template=package data

## How to create a module
1- --> flutter create --template=package core/data

2- --> flutter create --template=package domain

==================================================
## Added Melos
1- -- dart pub add melos

2- -- dart pub global activate melos

3- -- dart pub outdated

4- -- dart pub upgrade --major-versions


## Added injection.config.dart
1- -- dart run build_runner watch --delete-conflicting-outputs