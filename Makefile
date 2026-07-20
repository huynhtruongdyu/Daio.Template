# ======================================
# Configuration
# ======================================

SOLUTION := DaioTemplate.slnx
CONFIGURATION := Debug

.DEFAULT_GOAL := build

# ======================================
# Commands
# ======================================

.PHONY: restore build test clean format

restore:
	dotnet restore $(SOLUTION)

build:
	dotnet build $(SOLUTION) -c $(CONFIGURATION)

test:
	dotnet test $(SOLUTION) -c $(CONFIGURATION)

clean:
	dotnet clean $(SOLUTION)

format:
	dotnet format