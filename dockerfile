# 使用官方 Python 基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY . /app

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 设置环境变量，允许通过环境变量配置
ENV BOT_TOKEN=""


# 运行主脚本
CMD ["python", "bot.py"]
