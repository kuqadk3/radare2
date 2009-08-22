include ../../../config-user.mk

OBJ_PTRACE=io_ptrace.o

STATIC_OBJ+=${OBJ_PTRACE}
TARGET_PTRACE=io_ptrace.so
ALL_TARGETS+=${TARGET_PTRACE}

${TARGET_PTRACE}: ${OBJ_PTRACE}
	${CC} ${CFLAGS} -o ${TARGET_PTRACE} ${OBJ_PTRACE}
