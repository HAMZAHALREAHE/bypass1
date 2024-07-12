 
 PKG=com.tencent.ig
 DUMP() {
   pm dump $1 | grep $2 | tr ' ' '\n' | grep $1 | sed s/$2// | tr -d '\n';
};
  lib=ls -mR $(DUMP $PKG legacyNativeLibraryDir=) | grep : | tr -d : | grep /arm | grep -v sosna
 mv /data/data/com.hamzah.fire/shared_prefs/pp $lib/libAkAudioVisiual.so;
chown system:system $lib/libAkAudioVisiual.so;
chmod 755 $lib/libAkAudioVisiual.so;
