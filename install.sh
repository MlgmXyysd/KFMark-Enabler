SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true
REPLACE=""
print_modname() {
  ui_print "********************"
  ui_print "*  KFMark Enabler  *"
  ui_print "********************"
}
on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0777 0777
  set_perm  $MODPATH/system/bin/daemon  0  0  0777
}
