# Makefile generated by imake - do not edit!
# $Xorg: imake.c,v 1.6 2001/02/09 02:03:15 xorgcvs Exp $

# ----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $Xorg: Imake.tmpl,v 1.4 2000/08/17 19:41:46 cpqbld Exp $
# $XdotOrg: util/cf/Imake.tmpl,v 1.17 2006/04/15 15:55:25 herrb Exp $
#
#
#
#
# $XFree86: xc/config/cf/Imake.tmpl,v 3.155 2003/12/24 18:58:41 dickey Exp $
# ----------------------------------------------------------------------

all::

.SUFFIXES: .i

# $XdotOrg: util/cf/Imake.cf,v 1.12 2005/11/08 06:33:24 jkj Exp $
# $Xorg: Imake.cf,v 1.4 2000/08/17 19:41:45 cpqbld Exp $

# $XFree86: xc/config/cf/Imake.cf,v 3.88 2003/12/16 21:30:21 herrb Exp $

# Keep cpp from replacing path elements containing i486/i586/i686

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $TOG: site.sample /main/r64_final/1 1998/02/05 16:28:49 kaleb $

# site:  $XFree86: xc/config/cf/site.def,v 3.24 2000/06/25 20:17:29 dawes Exp $

# $XFree86: xc/config/cf/xf86site.def,v 3.186 2003/06/25 18:06:22 eich Exp $

# ----------------------------------------------------------------------
# platform-specific configuration parameters - edit linux.cf to change

# $XdotOrg: util/cf/linux.cf,v 1.31 2005/10/21 19:10:27 ajax Exp $
# platform:  $Xorg: linux.cf,v 1.3 2000/08/17 19:41:47 cpqbld Exp $

# platform:  $XFree86: xc/config/cf/linux.cf,v 3.220 2003/12/30 22:38:33 tsi Exp $

# operating system:  Linux 2.6.18-1-686 i686 [ELF] (2.6.18)
# libc:	(6.3.6)
# binutils:	(217)

# $Xorg: lnxLib.rules,v 1.3 2000/08/17 19:41:47 cpqbld Exp $
# $XFree86: xc/config/cf/lnxLib.rules,v 3.52 2003/10/31 20:49:03 herrb Exp $

# $XdotOrg: util/cf/xorg.cf,v 1.53 2005/10/03 16:08:44 alanc Exp $

# $Xorg: xfree86.cf,v 1.4 2000/08/17 19:41:49 cpqbld Exp $

XORG_VERSION_CURRENT = (((6) * 10000000) + ((9) * 100000) + ((0) * 1000) + 0)
RELEASE_VERSION = RELEASE-1

AFB_DEFS = -DUSE_AFB

DRIVERSDKDIR = $(USRLIBDIR)/Server
DRIVERSDKMODULEDIR = $(USRLIBDIR)/Server/modules
DRIVERSDKINCLUDEDIR = $(USRLIBDIR)/Server/include

       XF86SRC = $(SERVERSRC)/hw/xfree86
    XF86COMSRC = $(XF86SRC)/common
 XF86PARSERSRC = $(XF86SRC)/parser
     XF86OSSRC = $(XF86SRC)/os-support
 XF86DRIVERSRC = $(XF86SRC)/drivers
     DRIVERSRC = $(XF86DRIVERSRC)

        XFREE86DOCDIR = $(DOCDIR)
      XFREE86PSDOCDIR = $(DOCPSDIR)
     XFREE86PDFDOCDIR = $(DOCPDFDIR)
    XFREE86HTMLDOCDIR = $(DOCHTMLDIR)
XFREE86JAPANESEDOCDIR = $(DOCDIR)/Japanese

# $Xorg: xf86.rules,v 1.3 2000/08/17 19:41:48 cpqbld Exp $

# $XFree86: xc/config/cf/xf86.rules,v 3.34tsi Exp $

   SELINUX_LDFLAGS =

   SELINUX_INCLUDES = -I/usr/include/selinux

   SELINUX_CFLAGS =  -DHAVE_SELINUX

   SELINUX_LIBS = -lselinux

# ----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $TOG: site.sample /main/r64_final/1 1998/02/05 16:28:49 kaleb $

# site:  $XFree86: xc/config/cf/site.def,v 3.24 2000/06/25 20:17:29 dawes Exp $

# ---------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $Xorg: Imake.rules,v 1.3 2000/08/17 19:41:46 cpqbld Exp $
# rules:  $XdotOrg: util/cf/Imake.rules,v 1.11 2005/11/08 06:33:24 jkj Exp $
#
#
#
#
# rules:  $XFree86: xc/config/cf/Imake.rules,v 3.128 2003/11/15 03:25:17 dawes Exp $

.PHONY: all interfaces install install.man install.lib install.sdk 	depend includes cleandir

 _NULLCMD_ = @ echo -n

X_BYTE_ORDER = X_LITTLE_ENDIAN

GLIDE2INCDIR = /usr/include/glide

GLIDE3INCDIR = /usr/include/glide3

GLIDE3LIBNAME = glide3

TKLIBNAME = tk8.4

TKLIBDIR = /usr/lib

TCLLIBNAME = tcl8.4

TCLIBDIR = /usr/lib

          PATHSEP = /
            SHELL = /bin/sh -e

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = gccmakedep
        MKDIRHIER = mkdir -p
          REVPATH = revpath
    EXPORTLISTGEN =
             RMAN = /usr/bin/rman
     RMANBASENAME = rman
      RMANOPTIONS =
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/util

          INCROOT = /usr/include
        USRLIBDIR = /usr/lib
           VARDIR = /var
        VARLIBDIR = $(VARDIR)/lib
  SYSTEMUSRLIBDIR = /usr/lib
  SYSTEMUSRINCDIR = /usr/include
         SHLIBDIR = /usr/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/share/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)$(MANSECT)
    SYSCALLMANDIR = $(MANSOURCEPATH)$(SYSCALLMANSECT)
        LIBMANDIR = $(MANSOURCEPATH)$(LIBMANSECT)
     DRIVERMANDIR = $(MANSOURCEPATH)4
       FILEMANDIR = $(MANSOURCEPATH)$(FILEMANSECT)
       GAMEMANDIR = $(MANSOURCEPATH)$(GAMEMANSECT)
       MISCMANDIR = $(MANSOURCEPATH)7
        ADMMANDIR = $(MANSOURCEPATH)$(ADMMANSECT)
	  ICONDIR = "/usr/share/icons"
      XCURSORPATH = "~/.icons:/usr/share/icons:/usr/share/pixmaps"
     DRIVERMANDIR = $(MANSOURCEPATH)4
     LOGDIRECTORY = $(VARDIR)/log

        VARRUNDIR = $(VARDIR)/run

         VARDBDIR = $(VARDIR)/lib

               AR = ar clq

# Nice try but useless: make will inherit BOOTSTRAPCFLAGS
# from  top Makefile
  BOOTSTRAPCFLAGS =

               CC = gcc -m32
               AS = gcc -m32 -c -x assembler

.SUFFIXES: .cc

              CXX = c++ -m32

          CXXFILT = c++filt

           CXXLIB = -lstdc++

    CXXDEBUGFLAGS = -g -O2 -fno-strict-aliasing
CXXDEPENDINCLUDES =
 CXXEXTRA_DEFINES =
CXXEXTRA_INCLUDES =
   CXXSTD_DEFINES = -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L 				-D_POSIX_SOURCE -D_XOPEN_SOURCE 				-D_BSD_SOURCE -D_SVID_SOURCE                                 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 				  				 $(CXXPROJECT_DEFINES)
       CXXOPTIONS =
      CXXINCLUDES = $(INCLUDES) $(TOP_INCLUDES) $(CXXEXTRA_INCLUDES)
       CXXDEFINES = $(CXXINCLUDES) $(CXXSTD_DEFINES) $(THREADS_CXXDEFINES) $(DEFINES) $(CXXEXTRA_DEFINES)
         CXXFLAGS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(THREADS_CXXFLAGS) $(CXXDEFINES)

         COMPRESS = compress
          GZIPCMD = gzip

              CPP = cpp $(STD_CPP_DEFINES)
           RAWCPP = cpp -undef $(STD_CPP_OPTIONS)
    PREPROCESSCMD = gcc -m32 -E $(STD_CPP_DEFINES)

          INSTALL = install
     INSTALLFLAGS = -c

               LD = gcc -m32 -nostdlib

              LEX = flex -l
               M4 = m4
          M4FLAGS =
           LEXLIB = -lfl
             YACC = bison -y
           CCYACC = bison -y

             LINT = lint

      LINTLIBFLAG = -C
         LINTOPTS = -axz
               LN = ln -s
             MAKE = make
               MV = mv -f
               CP = cp

           RANLIB = ranlib

  RANLIBINSTFLAGS =

               RM = rm -f
             PERL = perl
         PERLOPTS =
     PERLENVSETUP = env LC_ALL=C

          MANSECT = 1
   SYSCALLMANSECT = 2
       LIBMANSECT = 3
    DRIVERMANSECT = 4
      FILEMANSECT = 5
      GAMEMANSECT = 6
      MISCMANSECT = 7
       ADMMANSECT = 8
       MANSRCSECT = s
       MANNEWSECT = n
 PROJECTMANSUFFIX = x
        MANSUFFIX = $(MANSECT)$(PROJECTMANSUFFIX)
 SYSCALLMANSUFFIX = $(SYSCALLMANSECT)$(PROJECTMANSUFFIX)
     LIBMANSUFFIX = $(LIBMANSECT)$(PROJECTMANSUFFIX)
  DRIVERMANSUFFIX = 4x
    FILEMANSUFFIX = $(FILEMANSECT)$(PROJECTMANSUFFIX)
    GAMEMANSUFFIX = $(GAMEMANSECT)$(PROJECTMANSUFFIX)
    MISCMANSUFFIX = 7x
     ADMMANSUFFIX = $(ADMMANSECT)$(PROJECTMANSUFFIX)
   ADMINMANSUFFIX = 8
     MANSRCSUFFIX = man
     MANNEWSUFFIX = _man
          MANDEFS = -D__apploaddir__=$(XAPPLOADDIR) -D__filemansuffix__=$(FILEMANSECT)$(PROJECTMANSUFFIX) -D__osfilemansuffix__=$(FILEMANSECT) -D__libmansuffix__=$(LIBMANSECT)$(PROJECTMANSUFFIX) -D__oslibmansuffix__=$(LIBMANSECT) -D__mansuffix__=$(MANSECT)$(PROJECTMANSUFFIX) -D__osmansuffix__=$(MANSECT) -D__syscallmansuffix__=$(SYSCALLMANSECT)$(PROJECTMANSUFFIX) -D__ossysmansuffix__=$(SYSCALLMANSECT) -D__gamemansuffix__=$(GAMEMANSECT)$(PROJECTMANSUFFIX) -D__osgamemansuffix__=$(GAMEMANSECT) -D__miscmansuffix__=$(MISCMANSECT)$(PROJECTMANSUFFIX) -D__osmiscmansuffix__=$(MISCMANSECT) -D__admmansuffix__=$(ADMMANSECT)$(PROJECTMANSUFFIX) -D__osadmmansuffix__=$(ADMMANSECT) -D__miscmansuffix__=$(MISCMANSECT)$(PROJECTMANSUFFIX) -D__osmiscmansuffix__=$(MISCMANSECT) -D__drivermansuffix__=$(DRIVERMANSECT)$(PROJECTMANSUFFIX) -D__osdrivermansuffix__=$(DRIVERMANSECT) -D__adminmansuffix__=$(ADMINMANSUFFIX) -D__projectroot__=$(PROJECTROOT) -D__xconfigfile__=$(XCONFIGFILE) -D__xconfigdir__=$(XCONFIGDIR) -D__xlogfile__=$(XLOGFILE) -D__xservername__=$(XSERVERNAME) -D__appmansuffix__=$(MANSECT)$(PROJECTMANSUFFIX) $(XORGMANDEFS) $(VENDORMANDEFS)

   COMPRESSMANCMD = gzip -n

            TROFF = groff -Tps
            NROFF = nroff

         MSMACROS = -ms
        MANMACROS = -man
              TBL = tbl
              EQN = eqn
             NEQN = neqn
              COL = col
         COLFLAGS = -b

            MODCC = gcc -m32

           MODCPP = cpp
        MODCFLAGS = $(CFLAGS)
            MODAS = gcc -m32 -c -x assembler
       MODASFLAGS =

            MODLD = gcc -m32 -nostdlib

       MODLDFLAGS =
MODLDCOMBINEFLAGS = -r
            MODAR = ar clq

        MODRANLIB = ranlib

            DVIPS = dvips
            LATEX = latex

     STD_INCLUDES =
  STD_CPP_OPTIONS = -traditional
  STD_CPP_DEFINES = -traditional -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L 				-D_POSIX_SOURCE -D_XOPEN_SOURCE 				-D_BSD_SOURCE -D_SVID_SOURCE                                 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 				  				 $(PROJECT_DEFINES)
      STD_DEFINES = -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L 				-D_POSIX_SOURCE -D_XOPEN_SOURCE 				-D_BSD_SOURCE -D_SVID_SOURCE                                 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 				  				 $(PROJECT_DEFINES)
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES =
             TAGS = ctags

   PARALLELMFLAGS =

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS = -shared $(SHLIBGLOBALSFLAGS)

         NOSTDLIB = -nostdlib
     POSTNOSTDLIB = -Wl,-Bstatic -lgcc -Wl,-Bdynamic

         PICFLAGS = -fPIC

      CXXPICFLAGS = -fPIC

    PROTO_DEFINES = -DFUNCPROTO=15 -DNARROWPROTO

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4711
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -m 4711

      PROJECTROOT = /usr

      CDEBUGFLAGS = -g -O2 -fno-strict-aliasing
        CCOPTIONS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(INSTALLED_INCLUDES) $(STD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(MODULE_DEFINES) $(DEFINES) $(EXTRA_DEFINES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(MODULE_CFLAGS) $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB =  $(INSTALLED_LIBS)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)

           LDLIBS = $(LDPOSTLIBS) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

           CCLINK = $(CC)

          CXXLINK = $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =
   DEPEND_DEFINES =

# Not sure this belongs here
         TKLIBDIR = /usr/lib
         TKINCDIR = /usr/include
        TKLIBNAME = tk8.4
        TKLIBRARY = -L$(TKLIBDIR) -l$(TKLIBNAME)
        TCLLIBDIR = /usr/lib
        TCLINCDIR = /usr/include
       TCLLIBNAME = tcl8.4
       TCLLIBRARY = -L$(TCLLIBDIR) -l$(TCLLIBNAME)

        MACROFILE = linux.cf
           RM_CMD = $(RM)

    IMAKE_DEFINES =
   IMAKE_WARNINGS = -Wundef

         IRULESRC = $(CONFIGDIR)
        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES) 		    $(IMAKE_WARNINGS)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/X11.tmpl 			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) 			$(IRULESRC)/xfree86.cf $(IRULESRC)/xf86.rules $(IRULESRC)/xorgsite.def $(IRULESRC)/host.def $(EXTRA_ICONFIGFILES)

# $Xorg: X11.rules,v 1.4 2000/08/17 19:41:46 cpqbld Exp $

# $XFree86: xc/config/cf/X11.rules,v 1.6 2001/01/17 16:22:31 dawes Exp $

# ----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $XdotOrg: util/cf/X11.tmpl,v 1.54 2006/04/15 15:55:25 herrb Exp $
# $Xorg: X11.tmpl,v 1.6 2000/08/17 19:41:46 cpqbld Exp $
#
#
#
#
# $XFree86: xc/config/cf/X11.tmpl,v 1.248 2004/02/16 04:07:37 dawes Exp $

XORGRELSTRING = `echo 6 9 0 | sed -e 's/ /./g' -e 's/^/Version\\\ /'`
  XORGMANNAME = X Version 11

STICKY_DEFINES = -DHAS_STICKY_DIR_BIT

FCHOWN_DEFINES = -DHAS_FCHOWN

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

             XTOP = $(TOP)
           BINDIR = /usr/bin
     BUILDINCROOT = $(TOP)/exports
      BUILDINCDIR = $(BUILDINCROOT)/include
      BUILDINCTOP = ../..
      BUILDLIBDIR = $(TOP)/exports/lib
      BUILDLIBTOP = ../..
      BUILDBINDIR = $(TOP)/exports/bin
      BUILDBINTOP = ../..
   BUILDMODULEDIR = $(BUILDLIBDIR)/modules
     BUILDI18NDIR = $(BUILDLIBDIR)/locale
   BUILDMODULETOP = $(BUILDLIBTOP)/..
    XBUILDINCROOT = $(XTOP)/exports
     XBUILDINCDIR = $(XBUILDINCROOT)/include/X11
     XBUILDINCTOP = ../../..
     XBUILDBINDIR = $(XBUILDINCROOT)/bin
           INCDIR = $(INCROOT)
           ADMDIR = /usr/adm
           LIBDIR = /usr/lib/X11
         SHAREDIR = /usr/share/X11
       LIBEXECDIR = /usr/libexec
        MODULEDIR = $(USRLIBDIR)/modules
   TOP_X_INCLUDES =
          XBINDIR = $(PROJECTROOT)/bin

       INSTSRCDIR = /usr/src

        ETCX11DIR = /etc/X11

          CONFDIR = $(ETCX11DIR)

           DOCDIR = $(LIBDIR)/doc
       DOCHTMLDIR = $(DOCDIR)/html
         DOCPSDIR = $(DOCDIR)/PostScript
        DOCPDFDIR = $(DOCDIR)/PDF
          FONTDIR = $(LIBDIR)/fonts
     ENCODINGSDIR = $(LIBDIR)/fonts/encodings
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = $(LIBDIR)/xdm
        XDMVARDIR = $(VARLIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
      LBXPROXYDIR = $(LIBDIR)/lbxproxy
  PROXYMANAGERDIR = $(LIBDIR)/proxymngr
        XPRINTDIR = $(LIBDIR)/xserver
      XAPPLOADDIR = /etc/X11/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = $(XBINDIR)/rgb
            FONTC = $(XBINDIR)/bdftopcf
      MKFONTSCALE = $(XBINDIR)/mkfontscale
        MKFONTDIR = $(XBINDIR)/mkfontdir
      MKHTMLINDEX = $(XBINDIR)/mkhtmlindex
          UCS2ANY = $(XBINDIR)/ucs2any
      BDFTRUNCATE = $(XBINDIR)/bdftruncate
     UCSMAPPREFIX = $(FONTDIR)/util/map-
       XCURSORGEN = $(XBINDIR)/xcursorgen

     HTMLINDEXCMD = HtmlIndexCmd

       DOCUTILSRC = $(XTOP)/doc/util
        CLIENTSRC = $(TOP)/clients
          DEMOSRC = $(TOP)/demos
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(XTOP)/lib
          FONTSRC = $(XTOP)/fonts
     ENCODINGSSRC = $(FONTSRC)/encodings
       INCLUDESRC = $(BUILDINCROOT)/include
      XINCLUDESRC = $(INCLUDESRC)/X11
        SERVERSRC = $(XTOP)/programs/Xserver
       CONTRIBSRC = $(XTOP)/../contrib
   UNSUPPORTEDSRC = $(XTOP)/unsupported
           DOCSRC = $(XTOP)/doc
           RGBSRC = $(XTOP)/programs/rgb
      BDFTOPCFSRC = $(PROGRAMSRC)/bdftopcf
     MKFONTDIRSRC = $(PROGRAMSRC)/mkfontdir
    FONTSERVERSRC = $(PROGRAMSRC)/xfs
       FONTINCSRC = $(XTOP)/include/fonts
        EXTINCSRC = $(XTOP)/include/extensions
      FTSOURCEDIR = FreeTypeSrcDir
        DRMSRCDIR = $(TOP)/extras/drm
       MESASRCDIR = $(TOP)/extras/Mesa
  OGLSAMPLESRCDIR = $(TOP)/extras/ogl-sample
        PSWRAPSRC = $(XTOP)/config/pswrap
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)
 CONNECTION_FLAGS = -DUNIXCONN -DTCPCONN $(STICKY_DEFINES) $(FCHOWN_DEFINES) -DIPv6
XTRANS_FAILDEFINES = -DFAIL_HARD

    VENDORMANNAME = X.Org
 VENDORMANVERSION = `echo 6 9 0 | sed -e 's/ /./g' -e 's/^/Version\\\ /'`
      XORGMANDEFS = -D__xorgversion__="\"$(XORGRELSTRING)\" \"$(XORGMANNAME)\""
    VENDORMANDEFS = -D__vendorversion__="$(VENDORMANVERSION) $(VENDORMANNAME)"
       VENDORNAME = The X.Org Foundation
  VENDORNAMESHORT = X.Org

 VENDORWEBSUPPORT = http://wiki.X.Org

VENDORSUPPORTDEFS = -D__VENDORDWEBSUPPORT__='"$(VENDORWEBSUPPORT)"'

      XKBDEFRULES = xorg
  XKBDEFRULESDEFS = -D__XKBDEFRULES__='"$(XKBDEFRULES)"'

     XCONFIGFILE = xorg.conf
      XCONFIGDIR = $(LIBDIR)
        XLOGFILE = Xorg
     XSERVERNAME = Xorg

       XENVLIBDIR = $(USRLIBDIR)
   CLIENTENVSETUP = LD_LIBRARY_PATH=$(XENVLIBDIR) XLOCALEDIR=$(BUILDLIBDIR)/locale

# $Xorg: lnxLib.tmpl,v 1.3 2000/08/17 19:41:47 cpqbld Exp $
# $XFree86: xc/config/cf/lnxLib.tmpl,v 3.19 2003/10/15 22:47:48 herrb Exp $

          XLIBSRC = $(LIBSRC)/X11

SOXLIBREV = 6.2
DEPXONLYLIB =
XONLYLIB =  -lX11

LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

      DEPXLIBONLY = $(DEPXONLYLIB)
         XLIBONLY = $(XONLYLIB)
     LINTXONLYLIB = $(LINTXONLY)

      XEXTLIBSRC = $(LIBSRC)/Xext

SOXEXTREV = 6.4
DEPEXTENSIONLIB =
EXTENSIONLIB =  -lXext

LINTEXTENSION = $(LINTLIBDIR)/llib-lXext.ln

LINTEXTENSIONLIB = $(LINTEXTENSION)
          DEPXLIB = $(DEPEXTENSIONLIB) $(DEPXONLYLIB)
             XLIB = $(EXTENSIONLIB) $(XONLYLIB)
         LINTXLIB = $(LINTXONLYLIB)

    XSSLIBSRC = $(LIBSRC)/Xss

SOXSSREV = 1.0
DEPXSSLIB =
XSSLIB =  -lXss

LINTXSS = $(LINTLIBDIR)/llib-lXss.ln

    XXF86MISCLIBSRC = $(LIBSRC)/Xxf86misc

SOXXF86MISCREV = 1.1
DEPXXF86MISCLIB =
XXF86MISCLIB =  -lXxf86misc

LINTXXF86MISC = $(LINTLIBDIR)/llib-lXxf86misc.ln

    XXF86VMLIBSRC = $(LIBSRC)/Xxf86vm

SOXXF86VMREV = 1.0
DEPXXF86VMLIB =
XXF86VMLIB =  -lXxf86vm

LINTXXF86VM = $(LINTLIBDIR)/llib-lXxf86vm.ln

    XXF86DGALIBSRC = $(LIBSRC)/Xxf86dga

SOXXF86DGAREV = 1.0
DEPXXF86DGALIB =
XXF86DGALIB =  -lXxf86dga

LINTXXF86DGA = $(LINTLIBDIR)/llib-lXxf86dga.ln

    XXF86RUSHLIBSRC = $(LIBSRC)/Xxf86rush

SOXXF86RUSHREV = 1.0
DEPXXF86RUSHLIB =
XXF86RUSHLIB =  -lXxf86rush

LINTXXF86RUSH = $(LINTLIBDIR)/llib-lXxf86rush.ln

    XVLIBSRC = $(LIBSRC)/Xv

SOXVREV = 1.0
DEPXVLIB =
XVLIB =  -lXv

LINTXV = $(LINTLIBDIR)/llib-lXv.ln

    XVMCLIBSRC = $(LIBSRC)/XvMC

SOXVMCREV = 1.0
DEPXVMCLIB =
XVMCLIB =  -lXvMC

LINTXVMC = $(LINTLIBDIR)/llib-lXvMC.ln

    XINERAMALIBSRC = $(LIBSRC)/Xinerama

SOXINERAMAREV = 1.0
DEPXINERAMALIB =
XINERAMALIB =  -lXinerama

LINTXINERAMA = $(LINTLIBDIR)/llib-lXinerama.ln

    XRESLIBSRC = $(LIBSRC)/XRes

SOXRESREV = 1.0
DEPXRESLIB =
XRESLIB =  -lXRes

LINTXRES = $(LINTLIBDIR)/llib-lXRes.ln

    DMXLIBSRC = $(LIBSRC)/dmx

SODMXREV = 1.0
DEPDMXLIB =
DMXLIB =  -ldmx

LINTDMX = $(LINTLIBDIR)/llib-ldmx.ln

    DPSLIBSRC = $(LIBSRC)/dps

DEPDPSLIB = $(USRLIBDIR)/libdps.a
DPSLIB =  -ldps

LINTDPS = $(LINTLIBDIR)/llib-ldps.ln

    DPSTKLIBSRC = $(LIBSRC)/dpstk

DEPDPSTKLIB = $(USRLIBDIR)/libdpstk.a
DPSTKLIB =  -ldpstk

LINTDPSTK = $(LINTLIBDIR)/llib-ldpstk.ln

    PSRESLIBSRC = $(LIBSRC)/psres

DEPPSRESLIB = $(USRLIBDIR)/libpsres.a
PSRESLIB =  -lpsres

LINTPSRES = $(LINTLIBDIR)/llib-lpsres.ln

    GLULIBSRC = $(LIBSRC)/GLU

SOGLUREV = 1.3
DEPGLULIB =
GLULIB =  -lGLU

LINTGLU = $(LINTLIBDIR)/llib-lGLU.ln

    GLXLIBSRC = $(LIBSRC)/GL

SOGLREV = 1.2
DEPGLXLIB =
GLXLIB =  -lGL

LINTGLX = $(LINTLIBDIR)/llib-lGL.ln

    GLWIDGETSRC = $(LIBSRC)/GLw

DEPGLWLIB = $(USRLIBDIR)/libGLw.a
GLWLIB =  -lGLw

LINTGLW = $(LINTLIBDIR)/llib-lGLw.ln

XRENDERDIR = /usr
XRENDERLIBDIR = /usr/lib
XRENDERINCDIR = /usr/include
XRENDERLIB = -L$(XRENDERLIBDIR) -lXrender
DEPXRENDERLIB =

XRENDERINCLUDES = -I$(XRENDERINCDIR)

    XRANDRLIBSRC = $(LIBSRC)/Xrandr

SOXRANDRREV = 2.0
DEPXRANDRLIB =
XRANDRLIB =  -lXrandr

LINTXRANDR = $(LINTLIBDIR)/llib-lXrandr.ln

    XFIXESLIBSRC = $(LIBSRC)/Xfixes

SOXFIXESREV = 3.0
DEPXFIXESLIB =
XFIXESLIB =  -lXfixes

LINTXFIXES = $(LINTLIBDIR)/llib-lXfixes.ln

   XDAMAGELIBSRC = $(LIBSRC)/Xdamage

SOXDAMAGEREV = 1.0
DEPXDAMAGELIB =
XDAMAGELIB =  -lXdamage

LINTXDAMAGE = $(LINTLIBDIR)/llib-lXdamage.ln

XCOMPOSITELIBSRC = $(LIBSRC)/Xcomposite

SOXCOMPOSITEREV = 1.0
DEPXCOMPOSITELIB =
XCOMPOSITELIB =  -lXcomposite

LINTXCOMPOSITE = $(LINTLIBDIR)/llib-lXcomposite.ln

XEVIELIBSRC = $(LIBSRC)/Xevie

SOXEVIEREV = 1.0
DEPXEVIELIB =
XEVIELIB =  -lXevie

LINTXEVIE = $(LINTLIBDIR)/llib-lXevie.ln

XCURSORDIR = /usr
XCURSORLIBDIR = /usr/lib
XCURSORINCDIR = /usr/include
XCURSORLIB = -L$(XCURSORLIBDIR) -lXcursor

XCURSORINCLUDES=-I$(XCURSORINCDIR) $(XRENDERINCLUDES)

   APPLEWMLIBSRC = $(LIBSRC)/apple

DEPAPPLEWMLIB = $(USRLIBDIR)/libAppleWM.a
APPLEWMLIB =  -lAppleWM

LINTAPPLEWM = $(LINTLIBDIR)/llib-lAppleWM.ln

   WINDOWSWMLIBSRC = $(LIBSRC)/windows

DEPWINDOWSWMLIB = $(USRLIBDIR)/libWindowsWM.a
WINDOWSWMLIB =  -lWindowsWM

LINTWINDOWSWM = $(LINTLIBDIR)/llib-lWindowsWM.ln

    XFONTCACHELIBSRC = $(LIBSRC)/Xfontcache

DEPXFONTCACHELIB = $(USRLIBDIR)/libXfontcache.a
XFONTCACHELIB =  -lXfontcache

LINTXFONTCACHE = $(LINTLIBDIR)/llib-lXfontcache.ln

         XAUTHSRC = $(LIBSRC)/Xau

SOXAUTHREV = 6.0
DEPXAUTHLIB =
XAUTHLIB =  -lXau

LINTXAUTH = $(LINTLIBDIR)/llib-lXau.ln

      XDMCPLIBSRC = $(LIBSRC)/Xdmcp

SOXDMCPREV = 6.0
DEPXDMCPLIB =
XDMCPLIB =  -lXdmcp

LINTXDMCP = $(LINTLIBDIR)/llib-lXdmcp.ln

           XMUSRC = $(LIBSRC)/Xmu

SOXMUREV = 6.2
DEPXMULIB =
XMULIB =  -lXmu

LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

           XMUUSRC = $(LIBSRC)/Xmuu

SOXMUUREV = 1.0
DEPXMUULIB =
XMUULIB =  -lXmuu

LINTXMUU = $(LINTLIBDIR)/llib-lXmuu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

DEPOLDXLIB = $(USRLIBDIR)/liboldX.a
OLDXLIB =  -loldX

LINTOLDX = $(LINTLIBDIR)/llib-loldX.ln

         XPLIBSRC = $(LIBSRC)/Xp

SOXPREV = 6.2
DEPXPLIB =
XPLIB =  -lXp

LINTXP = $(LINTLIBDIR)/llib-lXp.ln

       TOOLKITSRC = $(LIBSRC)/Xt

SOXTREV = 6.0
DEPXTOOLONLYLIB =
XTOOLONLYLIB =  -lXt

LINTXTOOLONLY = $(LINTLIBDIR)/llib-lXt.ln

      DEPXTOOLLIB = $(DEPXTOOLONLYLIB) $(DEPSMLIB) $(DEPICELIB)
         XTOOLLIB = $(XTOOLONLYLIB) $(SMLIB) $(ICELIB)
     LINTXTOOLLIB = $(LINTXTOOLONLYLIB)

       XALIBSRC = $(LIBSRC)/Xa

SOXAREV = 1.0
DEPXALIB =
XALIB =  -lXa

LINTXA = $(LINTLIBDIR)/llib-lXa.ln

       AWIDGETSRC = $(LIBSRC)/Xaw

SOXAWREV = 8.0
DEPXAWLIB =
XAWLIB =  -lXaw

LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

       AWIDGET7SRC = $(LIBSRC)/Xaw7

SOXAW7REV = 7.0
DEPXAW7LIB =
XAW7LIB =  -lXaw

LINTXAW7 = $(LINTLIBDIR)/llib-lXaw.ln

       AWIDGET6SRC = $(LIBSRC)/Xaw6

SOXAW6REV = 6.1
DEPXAW6LIB =
XAW6LIB =  -lXaw

LINTXAW6 = $(LINTLIBDIR)/llib-lXaw.ln

         XILIBSRC = $(LIBSRC)/Xi

SOXINPUTREV = 6.0
DEPXILIB =
XILIB =  -lXi

LINTXI = $(LINTLIBDIR)/llib-lXi.ln

      XTESTLIBSRC = $(LIBSRC)/Xtst

SOXTESTREV = 6.1
DEPXTESTLIB =
XTESTLIB =  -lXtst

LINTXTEST = $(LINTLIBDIR)/llib-lXtst.ln

DEPXBSDLIB = $(USRLIBDIR)/libXbsd.a
XBSDLIB =  -lXbsd

LINTXBSD = $(LINTLIBDIR)/llib-lXbsd.ln

           ICESRC = $(LIBSRC)/ICE

SOICEREV = 6.4
DEPICELIB =
ICELIB =  -lICE

LINTICE = $(LINTLIBDIR)/llib-lICE.ln

            SMSRC = $(LIBSRC)/SM

SOSMREV = 6.0
DEPSMLIB =
SMLIB =  -lSM

LINTSM = $(LINTLIBDIR)/llib-lSM.ln

           XKEYSRC = $(LIBSRC)/Xkey

SOXKEYREV = 6.0
DEPXKEYLIB =
XKEYLIB =  -lXkey

LINTXKEY = $(LINTLIBDIR)/llib-lXkey.ln

         FSLIBSRC = $(LIBSRC)/FS

SOFSREV = 6.0
DEPFSLIB =
FSLIB =  -lFS

LINTFS = $(LINTLIBDIR)/llib-lFS.ln

         FONTLIBSRC = $(LIBSRC)/font

DEPFONTLIB = $(USRLIBDIR)/libXfont.a
FONTLIB = -L$(FREETYPELIBDIR) -L$(FONTLIBSRC)  -lXfont

LINTXFONT = $(LINTLIBDIR)/llib-lXfont.ln
#
DEPXFONTLIB = $(USRLIBDIR)/libXfont.a
XFONTLIB =  -lXfont

LINTXFONT = $(LINTLIBDIR)/llib-lXfont.ln

     FONTSTUBLIBSRC = $(FONTLIBSRC)/stubs

DEPFONTSTUBLIB = $(USRLIBDIR)/libfntstubs.a
FONTSTUBLIB =  -lfntstubs

LINTFONTSTUB = $(LINTLIBDIR)/llib-lfntstubs.ln
         DEPFONTLIB = $(DEPXFONTLIB) $(DEPFONTSTUBLIB)
            FONTLIB = $(XFONTLIB) $(FONTSTUBLIB) $(FREETYPE2LIB)

         FONTENCLIBSRC = $(LIBSRC)/fontenc

DEPXFONTENCLIB = $(USRLIBDIR)/libfontenc.a
XFONTENCLIB =  -lfontenc

LINTXFONTENC = $(LINTLIBDIR)/llib-lfontenc.ln

          XPMLIBSRC = $(LIBSRC)/Xpm

SOXPMREV = 4.11
DEPXPMLIB =
XPMLIB =  -lXpm

LINTXPM = $(LINTLIBDIR)/llib-lXpm.ln

FREETYPE2DIR = /usr
FREETYPE2LIBDIR = /usr/lib
FREETYPE2INCDIR = /usr/include

FREETYPE2LIB = -lfreetype

FREETYPE2INCLUDES = -I$(FREETYPE2INCDIR)/freetype2 -I$(FREETYPE2INCDIR)/freetype2/config

FREETYPE2DEFINES = -DFREETYPE2

          EXPATLIBSRC = $(LIBSRC)/expat

SOEXPATREV = 0.4
DEPEXPATLIB =
EXPATLIB =  -lexpat

LINTEXPAT = $(LINTLIBDIR)/llib-lexpat.ln

EXPATDIR = /usr
EXPATLIBDIR = /usr/lib
EXPATINCDIR = /usr/include

EXPATINCLUDES =

EXPATLIB = -lexpat

EXPATDEFINES = -DEXPAT

XFTDIR = /usr
XFTLIBDIR = /usr/lib
XFTINCDIR = /usr/include
XFTLIB = -L$(XFTLIBDIR) -lXft

XFTINCLUDES= -I$(XFTINCDIR) $(FONTCONFIGINCLUDES) $(FREETYPE2INCLUDES) $(XRENDERINCLUDES)

FONTCONFIGDIR = /usr
FONTCONFIGLIBDIR = /usr/lib
FONTCONFIGINCDIR = /usr/include
FONTCONFIGBINDIR = /usr/bin

FONTCONFIGLIB = -lfontconfig

FONTCONFIGINCLUDES =

FCCACHE = $(FONTCONFIGBINDIR)/fc-cache

FONTCONFIGDEFINES = -DFONTCONFIG

LIBPNGINCDIR = /usr/include

LIBPNGINC=

LIBPNGDIR = /usr
LIBPNGLIBDIR = /usr/lib
LIBPNGINCDIR = /usr/include

LIBPNGLIB = -lpng

    XKBFILELIBSRC = $(LIBSRC)/xkbfile

SOXKBFILEREV =  1.0
DEPXKBFILELIB =
XKBFILELIB =  -lxkbfile

LINTXKBFILE = $(LINTLIBDIR)/llib-lxkbfile.ln

     XKBCOMPCMD = $(XBINDIR)/xkbcomp

    XKBUILIBSRC = $(LIBSRC)/xkbui

SOXKBUIREV =  1.0
DEPXKBUILIB =
XKBUILIB =  -lxkbui

LINTXKBUI = $(LINTLIBDIR)/llib-lxkbui.ln

EXTRAXAWREQS =

EXTRAXAWCLIENTDEPLIBS =

EXTRAXAWCLIENTLIBS =

        XTRAPLIBSRC = $(LIBSRC)/XTrap

SOXTRAPREV = 6.4
DEPXTRAPLIB =
XTRAPLIB =  -lXTrap

LINTXTRAP = $(LINTLIBDIR)/llib-lXTrap.ln

          DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)

         DEPLIBS1 = $(DEPLIBS)
         DEPLIBS2 = $(DEPLIBS)
         DEPLIBS3 = $(DEPLIBS)
         DEPLIBS4 = $(DEPLIBS)
         DEPLIBS5 = $(DEPLIBS)
         DEPLIBS6 = $(DEPLIBS)
         DEPLIBS7 = $(DEPLIBS)
         DEPLIBS8 = $(DEPLIBS)
         DEPLIBS9 = $(DEPLIBS)
         DEPLIBS10 = $(DEPLIBS)

      XFTPRELOADPATTERN = libXft.so.?
  XRENDERPRELOADPATTERN = libXrender.so.?
    XFONTPRELOADPATTERN = libXfont*.so.?

XMULIBONLY = -lXmu
XMULIB = $(XMULIBONLY) $(XTOOLLIB) $(XLIB)

        CONFIGDIR = $(LIBDIR)/config

    USRLIBDIRPATH = $(USRLIBDIR)
        LDPRELIBS =   $(INSTALLED_LIBS)
       LDPOSTLIBS =
     TOP_INCLUDES =  $(TOP_X_INCLUDES)
  PROJECT_DEFINES =
   VENDOR_DEFINES = -DXVENDORNAME='"$(VENDORNAME)"' -DXVENDORNAMESHORT='"$(VENDORNAMESHORT)"'

CXXPROJECT_DEFINES =

# ----------------------------------------------------------------------
# start of Imakefile

DEBUG = 1

DESTDIR = /usr
BINDIR = /bin

XPMLIB = -L/usr/lib/X11 -lXpm -lm -lsensors
DEPLIBS = $(DEPXLIB)

LOCAL_LIBRARIES = $(XPMLIB) $(XLIB)

LINTLIBS = $(LINTXLIB)

EXTRA_DEFINES = -Debug

SRCS = wmsensors.c
OBJS = wmsensors.o

        PROGRAM = wmsensors

all:: wmsensors

wmsensors: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

install:: wmsensors
	@if [ -d $(DESTDIR)$(BINDIR) ]; then \
		set +x; \
	else \
		if [ -h $(DESTDIR)$(BINDIR) ]; then \
			(set -x; rm -f $(DESTDIR)$(BINDIR)); \
		fi; \
		(set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); \
	fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTPGMFLAGS)  wmsensors $(DESTDIR)$(BINDIR)/wmsensors

depend::
	$(DEPEND) $(DEPENDFLAGS) -- $(ALLDEFINES) $(DEPEND_DEFINES) -- $(SRCS)

lint:
	$(LINT) $(LINTFLAGS) $(SRCS) $(LINTLIBS)
lint1:
	$(LINT) $(LINTFLAGS) $(FILE) $(LINTLIBS)

cleandir::
	$(RM) wmsensors

# ----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	 	$(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

.SUFFIXES: .ii

.cc.ii:
	$(RM) $@
	 	$(CC) -E $(CFLAGS) $(_NOOP_) $*.cc > $@

.SUFFIXES: .s

.c.s:
	$(RM) $@
	 	$(CC) -S $(CFLAGS) $(_NOOP_) $*.c

.cc.s:
	$(RM) $@
	 	$(CC) -S $(CFLAGS) $(_NOOP_) $*.cc

emptyrule::

cleandir::
	$(RM) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut   "#"*

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

man_keywords::

html_index::

clean:: cleandir

distclean:: cleandir

    PREPROCESSMANPAGES = true

# ----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

install.sdk::
	@echo "install.sdk in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

distclean::
	$(RM) Makefile Makefile.dep

# ----------------------------------------------------------------------
# dependencies generated by makedepend

