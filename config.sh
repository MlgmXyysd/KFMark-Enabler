AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true
print_modname() {
  ui_print "********************"
  ui_print "*  KFMark Enabler  *"
  ui_print "********************"
}
REPLACE=""
set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0755
  set_perm  $MODPATH/system/bin/daemon  0  0  0755
}
