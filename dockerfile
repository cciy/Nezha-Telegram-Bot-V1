# 使用官方 Python 基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . /app

# 创建虚拟环境
RUN python3 -m venv /opt/venv

# 设置环境变量以使用虚拟环境
ENV PATH="/opt/venv/bin:$PATH"

# 安装依赖
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# 设置环境变量，允许通过环境变量配置
ENV TELEGRAM_TOKEN=""

# 运行主脚本
CMD ["python", "bot.py"]