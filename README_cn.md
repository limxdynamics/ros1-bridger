<p align="center">
  <a href="README.md">English</a> | <b>中文</b>
</p>

<!-- limx-community:start -->
<!-- Managed by limxdynamics/limxdynamics/.github/community/sync_community.py; QR code: doc/wechat_qr.png in that repo -->
<p align="center"><a href="https://github.com/limxdynamics/limxdynamics/blob/main/doc/wechat_qr.png"><img src="https://img.shields.io/badge/%E5%BE%AE%E4%BF%A1%E5%BC%80%E5%8F%91%E8%80%85%E7%BE%A4-%E6%89%AB%E7%A0%81%E5%8A%A0%E5%85%A5%20%C2%B7%20%E8%A6%86%E7%9B%96%E5%85%A8%E9%83%A8%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE-07C160?style=for-the-badge&logo=wechat&logoColor=white" alt="微信开发者社区"></a></p>
<!-- limx-community:end -->

# ros1_bridger 完整使用步骤

#### 1. 环境准备

- 操作系统要求：确保本地设备运行 **Ubuntu 20.04 LTS**（x86_64 或 aarch64 架构）
- ROS 版本：已安装 **ROS Noetic**（若未安装，参考 [ROS Noetic 官方安装指南](http://wiki.ros.org/noetic/Installation/Ubuntu)）

#### 2. 网络连接与验证

- 连接机器人网络：通过有线或无线方式接入机器人所在局域网（确保与目标设备在同一网段）

- 网络连通性测试：

  ```
  # 测试与目标设备（10.192.1.2）的连通性
  ping 10.192.1.2
  
  ```

- 调整网络缓冲区（提升通信性能）：

  ```
  echo -e "net.core.wmem_max=12582912\nnet.core.rmem_max=12582912" | sudo tee -a /etc/sysctl.conf
  sudo sysctl -p
  ```

#### 3. 配置 ros1_bridger 连接参数

- 设置ros1 bridger通信地址：

  ```
  export MROS_IP_LIST=10.192.1.x
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
