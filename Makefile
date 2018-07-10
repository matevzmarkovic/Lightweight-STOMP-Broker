HeadersDir=src/headers/
SourcesDir=src/
TestDir=test/
TestHeadersDir=test/
BinDir=bin/

CC := cc
CFLAGS := -g
INCLUDES := -I$(HeadersDir)
INCLUDES_TEST := -I$(TestHeadersDir)


all: $(SourcesDir)main.c $(SourcesDir)broker.c
	$(CC) $(CFLAGS) $(INCLUDES) -o $(BinDir)main $(SourcesDir)main.c $(SourcesDir)broker.c

run:
	$(BinDir)main

clean:
	rm -f $(BinDir)main
	rm -f $(BinDir)test

test: $(TestDir)test.c $(SourcesDir)broker.c
	$(CC) $(INCLUDES) $(INCLUDES_TEST) -o $(BinDir)test $(TestDir)test.c $(SourcesDir)broker.c
	$(BinDir)test
	rm -f $(BinDir)test
