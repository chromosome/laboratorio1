SRC 		= src
INCLUDE 	= $(SRC)/include
BUILD 		= build
OBJ 		= obj

SRCS 		= $(wildcard $(SRC)/*.cpp)
OBJS 		= $(patsubst $(SRC)/%.cpp, $(OBJ)/%.o, $(SRCS))
PRGS 		= $(patsubst $(SRC)/%.cpp, $(BUILD)/%, $(SRCS))

IFLAGS 		= -I$(INCLUDE)

CXXFLAGS 	= -std=c++17 -Wall -MMD $(IFLAGS)

CXX 		= g++

DEPS 		= $(OBJS:.o=.d)

.PHONY: all clean distclean

.PRECIOUS: $(OBJS)

all: $(PRGS)

$(BUILD)/%: $(OBJ)/%.o | $(BUILD)
	$(CXX) $< -o $@

-include $(DEPS)

$(OBJ)/%.o: $(SRC)/%.cpp | $(OBJ)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD):
	@mkdir -p $(BUILD)

$(OBJ):
	@mkdir -p $(OBJ)

clean:
	@rm -rf $(OBJ)/*.o

distclean:
	@rm -rf $(OBJ) $(BUILD)
