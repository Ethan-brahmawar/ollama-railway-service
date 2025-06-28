#!/bin/bash

# Pull the model at runtime
echo "pulling llama3 model"
ollama pull llama3 || exit 1

# Then start the server
echo "starting ollama server"
exec ollama serve
