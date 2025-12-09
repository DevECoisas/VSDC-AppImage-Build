## ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# VSDC-AppImage-Build
A VSDC Version bundled inside an AppImage

## ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
## This project was made using [appimagetool](https://github.com/AppImage/appimagetool), [wine appimage](https://github.com/mmtrt/WINE_AppImage) and the current version of [VSDC](https://www.videosoftdev.com/pt/free-video-editor/download)
### Build Instructions:
```
git clone https://github.com/DevECoisas/VSDC-AppImage-Build.git
cd VSDC-AppImage-Build/VSDC.AppDir/usr/
wget https://github.com/mmtrt/WINE_AppImage/releases/download/continuous-stable/wine-stable_10.0-x86_64.AppImagesudo chmod +x wine-stable_10.0-x86_64.AppImage
sudo chmod +x wine-stable_10.0-x86_64.AppImage 
cd ../../
wget https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-x86_64.AppImage
sudo chmod +x appimagetool-x86_64.AppImage 
ARCH=x86_64 ./appimagetool-x86_64.AppImage VSDC.AppDir/
rm appimagetool-x86_64.AppImage 
```
