win32 {
  INCLUDEPATH += $$quote($$(TFDIR)\\include)
  LIBS += -L$$quote($$(TFDIR)\\bin)
  CONFIG(debug, debug|release) {
    LIBS += -ltreefrogd1
  } else {
    LIBS += -ltreefrog1
  }
} else {
  unix:LIBS += -Wl,-rpath,. -Wl,-rpath,/usr/local/Cellar/treefrog/1.29.0/lib -L/usr/local/Cellar/treefrog/1.29.0/lib -ltreefrog
  unix:INCLUDEPATH += /usr/local/Cellar/treefrog/1.29.0/include/treefrog
  linux-*:LIBS += -lrt
}
