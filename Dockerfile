FROM debian:bookworm

# Install Ollama binary dependencies
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://ollama.com/install.sh | bash && \
    apt-get clean

# Expose Ollama API port
EXPOSE 11434

# Pull the model on startup (you can change this to any supported model)
CMD ollama serve
