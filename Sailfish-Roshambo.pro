# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Sailfish-Roshambo

CONFIG += sailfishapp_qml

DISTFILES += qml/Sailfish-Roshambo.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/Sailfish-Roshambo.changes.in \
    rpm/Sailfish-Roshambo.changes.run.in \
    rpm/Sailfish-Roshambo.spec \
    rpm/Sailfish-Roshambo.yaml \
    translations/*.ts \
    qml/pages/Banner.qml \
    qml/pages/Button.qml \
    qml/pages/Gameplay.qml \
    qml/pages/Hand.qml \
    qml/pages/Input.qml \
    qml/pages/Menu.qml \
    qml/pages/Scene.qml \
    qml/pages/Tablo.qml \
    qml/pages/Banner.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Sailfish-Roshambo-de.ts
