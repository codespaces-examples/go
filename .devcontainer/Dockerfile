FROM golang:1.20.2-bullseye

COPY . .

# ENV PATH "$PATH:/usr/local/go/bin:/home/user/go/bin:/home/user/.cargo/bin"
RUN bash setup.sh
USER user
