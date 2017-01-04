##################################################
###
### Diretivas de MAKE para o construto: Tst-smt
### Gerado a partir de: tst-smt.comp
###
### ----- Arquivo gerado, NÃO EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = Tst-smt


### Nomes de paths

Ptable               = ..\tables
Pinc                 = ..\tables;..\sources
Phpp                 = ..\sources
Pferram              = ..\..\tools\programs
Pobj                 = ..\Obj
Perr                 = ..\sources
PDEFAULT             = ..\sources
Pmakeup              = ..\tables
Pstr                 = ..\tables
Pcpp                 = ..\sources

### Nomes de diretórios para geração

Ftable               = ..\tables
Finc                 = ..\tables
Fhpp                 = ..\sources
Fferram              = ..\..\tools\programs
Fobj                 = ..\Obj
Ferr                 = ..\sources
FDEFAULT             = ..\sources
Fmakeup              = ..\tables
Fstr                 = ..\tables
Fcpp                 = ..\sources

### Macros da plataforma


O       = /Gs /D_CRT_SECURE_NO_DEPRECATE
OD      = /Gs /Zi /Od /D_CRT_SECURE_NO_DEPRECATE
L       =
LD      = /DEBUG /DEBUGTYPE:CV

CDB     = /D_DEBUG

OPT     = /c /J /W4 /EHa /GA /GF /GR /Zp /nologo

!IFDEF PRD
O       = /Ox  /D_CRT_SECURE_NO_DEPRECATE
CDB     =
!ENDIF

INCLUDE     = $(INCLUDE);$(Pinc)


SPECTEST    = dummy_test





### Macros do construto posteriores à plataforma

SPECTEST    = tst_smt


### Regras de geração

all : limpa \
   $(Finc)\str_bcd.inc   $(Finc)\str_cnt.inc   $(Finc)\str_dis.inc \
   $(Finc)\str_dsp.inc   $(Finc)\str_env.inc   $(Finc)\str_exc.inc \
   $(Finc)\str_glb.inc   $(Finc)\str_global.inc   $(Finc)\str_log.inc \
   $(Finc)\str_msg.inc   $(Finc)\str_sio.inc   $(Finc)\str_sls.inc \
   $(Finc)\str_smt.inc   $(Finc)\str_str.inc   $(Finc)\str_tim.inc \
   $(Finc)\str_tst.inc   $(Finc)\str_ver.inc   $(Ftable)\string.table \
   $(Fobj)\symbtab.obj   $(Fobj)\tst_smt.obj   $(Fobj)\bcdarit.obj \
   $(Fobj)\breakpnt.obj   $(Fobj)\counters.obj   $(Fobj)\disaster.obj \
   $(Fobj)\dynspac.obj   $(Fobj)\environ.obj   $(Fobj)\exceptn.obj \
   $(Fobj)\global.obj   $(Fobj)\gnrctest.obj   $(Fobj)\int_cnt.obj \
   $(Fobj)\int_dsp.obj   $(Fobj)\logger.obj   $(Fobj)\main.obj \
   $(Fobj)\message.obj   $(Fobj)\msgbin.obj   $(Fobj)\msgstr.obj \
   $(Fobj)\msgtime.obj   $(Fobj)\randgen.obj   $(Fobj)\readtest.obj \
   $(Fobj)\simplist.obj   $(Fobj)\sioctrl.obj   $(Fobj)\sls_elem.obj \
   $(Fobj)\string.obj   $(Fobj)\time.obj   $(Fobj)\tracer.obj \
   $(Fobj)\verifier.obj \
   Construto

### Limpar arquivos

limpa :
###   $(Fferram)\CompileBanner /c$(NOME)
###   $(Fferram)\GenerateFile ..\sources\specific-test.hpp  "#include \"$(SPECTEST).hpp\""
###   $(Fferram)\CompileBanner /c$(NOME)  > $(Ferr)\$(NOME).err
   SET CL=$(OPT)


### Dependências de módulos objeto a compilar


$(Fobj)\symbtab.obj :  {$(Pcpp)}\symbtab.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          {$(Phpp)}environ.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           {$(Phpp)}logger.hpp           \
    {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_smt.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\tst_smt.obj :  {$(Pcpp)}\tst_smt.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          \
    {$(Phpp)}randgen.hpp          {$(Phpp)}readtest.hpp         {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Phpp)}tst_rtst.hpp         \
    {$(Phpp)}tst_smt.hpp          {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\bcdarit.obj :  {$(Pcpp)}\bcdarit.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_bcd.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\breakpnt.obj :  {$(Pcpp)}\breakpnt.cpp \
    {$(Phpp)}breakpnt.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\counters.obj :  {$(Pcpp)}\counters.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          \
    {$(Phpp)}msgbin.hpp           {$(Phpp)}msgstr.hpp           {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Pinc)}str_cnt.inc          {$(Pinc)}str_sio.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Phpp)}time.hpp             \
    {$(Phpp)}tst_rtst.hpp         {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\disaster.obj :  {$(Pcpp)}\disaster.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}disaster.hpp         {$(Phpp)}environ.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           {$(Phpp)}gnrctest.hpp         \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Pinc)}str_dis.inc          {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Phpp)}tst_rtst.hpp         {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\dynspac.obj :  {$(Pcpp)}\dynspac.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}disaster.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}msgbin.hpp           \
    {$(Phpp)}msgstr.hpp           {$(Phpp)}sioctrl.hpp          {$(Pinc)}str_dsp.inc          \
    {$(Pinc)}str_global.inc       {$(Phpp)}string.hpp           {$(Pinc)}talisman_constants.inc \
    {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\environ.obj :  {$(Pcpp)}\environ.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          \
    {$(Phpp)}msgstr.hpp           {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         \
    {$(Pinc)}str_env.inc          {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\exceptn.obj :  {$(Pcpp)}\exceptn.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}msgbin.hpp           \
    {$(Phpp)}msgstr.hpp           {$(Phpp)}msgtime.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_exc.inc          \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tracer.hpp           {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\global.obj :  {$(Pcpp)}\global.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}disaster.hpp         \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}global.hpp           {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          \
    {$(Phpp)}msgbin.hpp           {$(Phpp)}msgstr.hpp           {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_glb.inc          \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}time.hpp             {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\gnrctest.obj :  {$(Pcpp)}\gnrctest.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}breakpnt.hpp         {$(Phpp)}counters.hpp         \
    {$(Pinc)}cte_str.inc          {$(Phpp)}disaster.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          \
    {$(Phpp)}msgbin.hpp           {$(Phpp)}msgstr.hpp           {$(Phpp)}msgtime.hpp          \
    {$(Phpp)}readtest.hpp         {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_sio.inc          {$(Pinc)}str_tst.inc          \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}time.hpp             {$(Phpp)}tracer.hpp           {$(Phpp)}tst_rtst.hpp         \
    {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\int_cnt.obj :  {$(Pcpp)}\int_cnt.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tst_rtst.hpp         {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\int_dsp.obj :  {$(Pcpp)}\int_dsp.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tst_rtst.hpp         {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\logger.obj :  {$(Pcpp)}\logger.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}msgstr.hpp           \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Pinc)}str_log.inc          {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Phpp)}time.hpp             {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\main.obj :  {$(Pcpp)}\main.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}specific-test.hpp    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}talisman_versioncontrol.inc {$(Phpp)}tst_rtst.hpp         \
    {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\message.obj :  {$(Pcpp)}\message.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          {$(Phpp)}msgbin.hpp           \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_msg.inc          \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tracer.hpp           {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\msgbin.obj :  {$(Pcpp)}\msgbin.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}message.hpp          {$(Phpp)}msgbin.hpp           {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\msgstr.obj :  {$(Pcpp)}\msgstr.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}message.hpp          {$(Phpp)}msgstr.hpp           {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_msg.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\msgtime.obj :  {$(Pcpp)}\msgtime.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}message.hpp          {$(Phpp)}msgtime.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Phpp)}time.hpp             {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\randgen.obj :  {$(Pcpp)}\randgen.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          \
    {$(Phpp)}randgen.hpp          {$(Phpp)}string.hpp           {$(Pinc)}talisman_constants.inc \
    {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\readtest.obj :  {$(Pcpp)}\readtest.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          \
    {$(Phpp)}readtest.hpp         {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_sio.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Phpp)}tst_rtst.hpp         \
    {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\simplist.obj :  {$(Pcpp)}\simplist.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_sls.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\sioctrl.obj :  {$(Pcpp)}\sioctrl.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}msgbin.hpp           \
    {$(Phpp)}msgstr.hpp           {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_sio.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc \
    {$(Phpp)}verifier.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\sls_elem.obj :  {$(Pcpp)}\sls_elem.cpp \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}talisman_constants.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\string.obj :  {$(Pcpp)}\string.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_global.inc       {$(Pinc)}str_str.inc          \
    {$(Phpp)}string.hpp           {$(Ptable)}string.table         {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\time.obj :  {$(Pcpp)}\time.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          \
    {$(Phpp)}readtest.hpp         {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_tim.inc          {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Phpp)}time.hpp             \
    {$(Phpp)}tst_rtst.hpp         {$(Phpp)}tst_tim.hpp          {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\tracer.obj :  {$(Pcpp)}\tracer.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}global.hpp           {$(Phpp)}logger.hpp           \
    {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Phpp)}tracer.hpp           {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\verifier.obj :  {$(Pcpp)}\verifier.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}msgbin.hpp           \
    {$(Phpp)}msgstr.hpp           {$(Phpp)}msgtime.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_ver.inc          \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Pinc)}typeidmessageitem.inc {$(Phpp)}verifier.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err


### Terminação

Construto : \
   $(Fobj)\symbtab.obj   $(Fobj)\tst_smt.obj   $(Fobj)\bcdarit.obj \
   $(Fobj)\breakpnt.obj   $(Fobj)\counters.obj   $(Fobj)\disaster.obj \
   $(Fobj)\dynspac.obj   $(Fobj)\environ.obj   $(Fobj)\exceptn.obj \
   $(Fobj)\global.obj   $(Fobj)\gnrctest.obj   $(Fobj)\int_cnt.obj \
   $(Fobj)\int_dsp.obj   $(Fobj)\logger.obj   $(Fobj)\main.obj \
   $(Fobj)\message.obj   $(Fobj)\msgbin.obj   $(Fobj)\msgstr.obj \
   $(Fobj)\msgtime.obj   $(Fobj)\randgen.obj   $(Fobj)\readtest.obj \
   $(Fobj)\simplist.obj   $(Fobj)\sioctrl.obj   $(Fobj)\sls_elem.obj \
   $(Fobj)\string.obj   $(Fobj)\time.obj   $(Fobj)\tracer.obj \
   $(Fobj)\verifier.obj
   SET CL=
   CD  $(Fobj)
   LINK  $(L)  @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: Tst-smt
###
##################################################

