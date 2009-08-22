include ../../../config-user.mk

OBJ_MALLOC=io_malloc.o

STATIC_OBJ+=${OBJ_MALLOC}
TARGET_MALLOC=io_malloc.so
ALL_TARGETS+=${TARGET_MALLOC}

${TARGET_MALLOC}: ${OBJ_MALLOC}
	${CC} ${CFLAGS} -o ${TARGET_MALLOC} ${OBJ_MALLOC}
