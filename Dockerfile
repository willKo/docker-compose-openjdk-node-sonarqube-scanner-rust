FROM emundo/docker-compose-openjdk-node-sonarqube-scanner:latest
USER root
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN echo $PATH
ENV PATH="${HOME}/.cargo/bin:${PATH}"
RUN echo $PATH
RUN $HOME/.cargo/bin/rustup install stable
RUN $HOME/.cargo/bin/rustup default stable
RUN $HOME/.cargo/bin/cargo -V
RUN $HOME/.cargo/bin/rustc -V
RUN $HOME/.cargo/bin/rustup update
