CFLAGS = -std=c++11 `pkg-config --cflags python3` -fPIC
LFLAGS = `pkg-config --libs python3`

MODE ?= 'RELEASE'

# Release mode
ifeq ($(MODE), RELEASE)
    CFLAGS += -DNDEBUG -O3 -march=native
endif

# Debug mode
ifeq ($(MODE), DEBUG)
    CFLAGS += -DDEBUG -fno-omit-frame-pointer -g -D_LIBCPP_DEBUG
endif

# Profile mode
ifeq ($(MODE), PROFILE)
		CFLAGS += -DNDEBUG -g -march=native -fno-omit-frame-pointer
endif

# Enable address sanitizer
ifeq ($(MODE), ADDRESS)
    CFLAGS += -DDEBUG -fno-omit-frame-pointer -g -D_LIBCPP_DEBUG -fsanitize=address
endif

# Enable memory sanitizer
ifeq ($(MODE), MEMORY)
    CFLAGS += -DDEBUG -fno-omit-frame-pointer -g -D_LIBCPP_DEBUG -fsanitize=memory
endif

CXX = g++ $(CFLAGS)


pysrcs = $(wildcard *_py.cpp)
srcs = $(filter-out $(pysrcs), $(wildcard *.cpp))

pyobjs = $(pysrcs:.cpp=.o)
pydeps = $(pysrcs:.cpp=.d)
objs = $(srcs:.cpp=.o)
deps = $(srcs:.cpp=.d)

headers = $(wildcard *.h)

format:
		clang-format -i *.h *.cpp

check:
		clang-check -analyze $(headers) -- -Wall -x c++ $(CFLAGS)
		clang-check -analyze $(srcs) $(pysrcs) -- -Wall -x c++ $(CFLAGS)
		
tidy:
		clang-tidy -checks=*,-llvm-header-guard $(srcs) $(pysrcs) -header-filter=.* -- -Wall -x c++ $(CFLAGS)

%.o: %.cpp
		$(CXX) -MMD -MP -c $<

clean:
		rm *.o *.d *.so $(executables)

lib: $(objs) $(pyobjs)
		echo $(objs)
		echo $(pyobjs)
		$(CXX) -shared $(objs) Connect4_py.o $(CFLAGS) $(LFLAGS) -o Connect4.so
		$(CXX) -shared $(objs) MinMaxPointHeuristicD6_py.o $(CFLAGS) $(LFLAGS) -o MinMaxPointHeuristicD6.so
		$(CXX) -shared $(objs) MinMaxTotalLengthHeuristicD6_py.o $(CFLAGS) $(LFLAGS) -o MinMaxTotalLengthHeuristicD6.so
		$(CXX) -shared $(objs) MinMaxPossible4HeuristicD6_py.o $(CFLAGS) $(LFLAGS) -o MinMaxPossible4HeuristicD6.so
		$(CXX) -shared $(objs) MinMaxPointHeuristicD4_py.o $(CFLAGS) $(LFLAGS) -o MinMaxPointHeuristicD4.so
		$(CXX) -shared $(objs) MinMaxTotalLengthHeuristicD4_py.o $(CFLAGS) $(LFLAGS) -o MinMaxTotalLengthHeuristicD4.so
		$(CXX) -shared $(objs) MinMaxPossible4HeuristicD4_py.o $(CFLAGS) $(LFLAGS) -o MinMaxPossible4HeuristicD4.so
		$(CXX) -shared $(objs) MinMaxRandomLegalHeuristicD4_py.o $(CFLAGS) $(LFLAGS) -o MinMaxRandomLegalHeuristicD4.so
all: lib

-include $(deps)
