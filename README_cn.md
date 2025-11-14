# 中文 | [English](README.md)



# ros1_bridger 完整使用步骤

#### 1. 环境准备

- **操作系统要求**：确保本地设备运行 **Ubuntu 20.04 LTS**（x86_64 或 aarch64 架构）
- **ROS 版本**：已安装 **ROS Noetic**（若未安装，参考 [ROS Noetic 官方安装指南](http://wiki.ros.org/noetic/Installation/Ubuntu)）

#### 2. 网络连接与验证

- **连接机器人网络**：通过有线或无线方式接入机器人所在局域网（确保与目标设备在同一网段）

- **网络连通性测试**：

  ```
  # 测试与目标设备（10.192.1.2）的连通性
  ping 10.192.1.2
  
  ```

#### 3. 配置 ros1_bridger 连接参数

- 设置ros1 bridger地址（机器人的 IP）：

  ```
  export MROS_AGENT_URI=tcp://10.192.1.2
  ```

#### 4. 启动 ros1_bridger

​	根据本地设备架构选择对应命令：

- x86_64 架构：

  ```
  # 加载 ROS 环境
  source /opt/ros/noetic/setup.bash
  
  # 加载 ros1_bridger 安装环境
  source amd64/noetic/install/setup.bash
  
  # 启动桥接节点
  roslaunch mrosbridger mrosbridger.launch
  ```

- aarch64 架构：

  ```
  # 加载 ROS 环境
  source /opt/ros/noetic/setup.bash
  
  # 加载 ros1_bridger 安装环境
  source aarch64/noetic/install/setup.bash
  
  # 启动桥接节点
  roslaunch mrosbridger mrosbridger.launch
  ```

#### 5. 验证桥接是否生效

- 查看节点是否正常启动：

  ```
  # 新开终端，查看活跃节点
  rosnode list
  ```

- 测试话题通信：

  ```
  # 查看桥接的话题列表
  rostopic list
  ```
