#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Tester_Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/ecu_lua_script.o \
	${OBJECTDIR}/src/isotp_socket.o \
	${OBJECTDIR}/src/uds_server.o \
	${OBJECTDIR}/src/utilities.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f2 \
	${TESTDIR}/TestFiles/f1

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/tests/selene_test.o \
	${TESTDIR}/tests/selene_test_runner.o \
	${TESTDIR}/tests/utils_test.o \
	${TESTDIR}/tests/utils_test_runner.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-pthread
CXXFLAGS=-pthread

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=`pkg-config --libs lua5.2`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/amos-ss17-proj4

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/amos-ss17-proj4: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/amos-ss17-proj4 ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/ecu_lua_script.o: src/ecu_lua_script.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/ecu_lua_script.o src/ecu_lua_script.cpp

${OBJECTDIR}/src/isotp_socket.o: src/isotp_socket.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/isotp_socket.o src/isotp_socket.cpp

${OBJECTDIR}/src/uds_server.o: src/uds_server.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/uds_server.o src/uds_server.cpp

${OBJECTDIR}/src/utilities.o: src/utilities.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/utilities.o src/utilities.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:

${TESTDIR}/TestFiles/f2: ${TESTDIR}/tests/selene_test.o ${TESTDIR}/tests/selene_test_runner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f2 $^ ${LDLIBSOPTIONS}   `cppunit-config --libs`   

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/utils_test.o ${TESTDIR}/tests/utils_test_runner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS}   `cppunit-config --libs`   


${TESTDIR}/tests/selene_test.o: tests/selene_test.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include -Isrc `pkg-config --cflags lua5.2` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/selene_test.o tests/selene_test.cpp


${TESTDIR}/tests/selene_test_runner.o: tests/selene_test_runner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include -Isrc `pkg-config --cflags lua5.2` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/selene_test_runner.o tests/selene_test_runner.cpp


${TESTDIR}/tests/utils_test.o: tests/utils_test.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include -Isrc `pkg-config --cflags lua5.2` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/utils_test.o tests/utils_test.cpp


${TESTDIR}/tests/utils_test_runner.o: tests/utils_test_runner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include -Isrc `pkg-config --cflags lua5.2` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/utils_test_runner.o tests/utils_test_runner.cpp


${OBJECTDIR}/src/ecu_lua_script_nomain.o: ${OBJECTDIR}/src/ecu_lua_script.o src/ecu_lua_script.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/ecu_lua_script.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/ecu_lua_script_nomain.o src/ecu_lua_script.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/ecu_lua_script.o ${OBJECTDIR}/src/ecu_lua_script_nomain.o;\
	fi

${OBJECTDIR}/src/isotp_socket_nomain.o: ${OBJECTDIR}/src/isotp_socket.o src/isotp_socket.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/isotp_socket.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/isotp_socket_nomain.o src/isotp_socket.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/isotp_socket.o ${OBJECTDIR}/src/isotp_socket_nomain.o;\
	fi

${OBJECTDIR}/src/uds_server_nomain.o: ${OBJECTDIR}/src/uds_server.o src/uds_server.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/uds_server.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/uds_server_nomain.o src/uds_server.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/uds_server.o ${OBJECTDIR}/src/uds_server_nomain.o;\
	fi

${OBJECTDIR}/src/utilities_nomain.o: ${OBJECTDIR}/src/utilities.o src/utilities.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/utilities.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Wall -I/usr/include/lua5.2 -ISelene/include `pkg-config --cflags lua5.2` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/utilities_nomain.o src/utilities.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/utilities.o ${OBJECTDIR}/src/utilities_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f2 || true; \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
