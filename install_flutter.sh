#!/bin/bsah

yay flutter-group-pacman-hookclear
yay flutter

# Flutter was installed on /opt/flutter
#
# If you intend to use it as a regular user, add your user into the group flutterusers:
# gpasswd -a <user> flutterusers
#
# You need to source /etc/profile or relogin to add flutter to your path.
#
# Re-login your terminal in to the group flutterusers:
# newgrp flutterusers
# Dépendances optionnelles pour flutter
#     android-sdk
#     android-studio
#     dart
#     intellij-idea-community-edition [installé]
#     intellij-idea-ultimate-edition
#     perl [installé]
#     python [installé]

# 

yay dart
yay android-sdk
yay android-studio
yay android-sdk-platform-tools
yay android-platform
yay android-sdk-build-tools
yay android-udev

sudo chgrp -R flutterusers /opt/flutter
sudo chmod g+w /opt/flutter
sudo gpasswd -a $USER flutterusers

flutter doctor
flutter doctor --android-licenses 
flutter devices

sudo groupadd android-sdk
sudo gpasswd -a $USER android-sdk
sudo setfacl -R -m g:android-sdk:rwx /opt/android-sdk
sudo setfacl -d -m g:android-sdk:rwX /opt/android-sdk  


# When adb: insufficient permissions for device
adb kill-server && sudo adb start-server


# Run on web
flutter channel beta
flutter upgrade
flutter config --enable-web

flutter run -d web

# Resources :
# https://flutter.dev/docs/cookbook
# https://flutter.dev/docs/resources/bootstrap-into-dart
# https://dart.dev/codelabs
# https://pub.dev/

# Firestore Doc
https://console.firebase.google.com/project/fir-flutter-codelab-cf878/authentication/users

# Flutter youtub playlist
https://www.youtube.com/playlist?list=PLOU2XLYxmsIJ7dsVN4iRuA7BT8XHzGtCr

# Firestore youtube playlist
https://www.youtube.com/playlist?list=PLl-K7zZEsYLluG5MCVEzXAQ7ACZBCuZgZ

Next Tuto : https://codelabs.developers.google.com/codelabs/friendlyeats-flutter?hl=en#0


