FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app/
EXPOSE 80
RUN apt-get update && apt-get install -y curl g++-mingw-w64-x86-64 build-essential
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup target add x86_64-pc-windows-gnu && rustup toolchain install stable-x86_64-pc-windows-gnu
#CMD ["/app/builder"]
