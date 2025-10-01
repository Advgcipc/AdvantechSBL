
@IF "%1"=="" goto HelpMsg
@IF "%1"=="-g" goto BuildSource
@IF "%1"=="-?" goto HelpMsg
@IF "%1"=="-h" goto HelpMsg
@goto Exit


:BuildSource
git clone https://github.com/Advgcipc/AdvantechSBL.git
@IF "%2"=="" goto BuildSourceExit
cd AdvantechSBL
git checkout %2
:BuildSourceExit
@goto Exit


:HelpMsg
@echo "Slim Boot Loader get source code
@echo "      -g      Get Slim Boot Loader Source
@echo "      -h      Show Help message  
@echo "      -?      Show Help message  
@echo " Slim Boot Loader get source code.
@echo " Example: Slim -g

@goto Exit

:Exit
@title Slim Boot Loader get source code
