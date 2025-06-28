FROM ollama/ollama

# Pull the llama3 model at build time
RUN ollama pull llama3

EXPOSE 11434

CMD ["ollama", "serve"]
