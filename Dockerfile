FROM ubuntu:22.04

# 安装 C++ 编译环境
RUN apt-get update && \
    apt-get install -y g++ vim git && \
    apt-get clean

# 创建工作目录
WORKDIR /workspace

# 复制代码
COPY hello_world.cpp .

# 编译 hello_world
RUN g++ hello_world.cpp -o hello_world

# 默认进入 bash，适合作为开发环境
CMD ["bash"]
