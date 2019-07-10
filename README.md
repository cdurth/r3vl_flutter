# r3vl_flutter

begin of rewrite of r3vl client using flutter.

design principles/patterns and scaffold from https://medium.com/flutterpub/architecting-your-flutter-project-bd04e144a8f1

### Rebuilding DI Graph & cleanup
windows(uses cleanup.bat): `flutter packages pub run build_runner build && cleanup.bat`
mac/linux/cygwin: `flutter packages pub run build_runner build --delete-conflicting-outputs && find . -size 0 -delete`