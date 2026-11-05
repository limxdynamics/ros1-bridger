<p align="center">
  <b>English</b> | <a href="README_cn.md">中文</a>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-Apache--2.0-2f6feb" alt="License: Apache-2.0"></a>
  <img src="https://img.shields.io/badge/ROS-Noetic-2f6feb" alt="ROS Noetic">
  <img src="https://img.shields.io/badge/Ubuntu-20.04-2f6feb" alt="Ubuntu 20.04">
  <img src="https://img.shields.io/badge/platform-x86__64%20%7C%20aarch64-2f6feb" alt="x86_64 / aarch64">
  <a href="https://github.com/limxdynamics/limxdynamics/blob/main/doc/wechat_qr.png"><img src="https://img.shields.io/badge/WeChat-Developer%20Community-07C160?logo=wechat&logoColor=white" alt="WeChat Community"></a>
</p>

# ros1_bridger Complete Usage Steps

#### 1. Environment Preparation

- Operating System Requirement: Ensure the local device runs Ubuntu 20.04 LTS (x86_64 or aarch64 architecture).
- ROS Version: ROS Noetic must be installed. For installation, refer to the [official ROS Noetic installation guide](http://wiki.ros.org/noetic/Installation/Ubuntu).

#### 2. Network Connection and Verification

- Connect to the Robot Network: Access the robot's  local area network via wired or wireless connection (ensure it is on the same network segment as the target device).

- Network Connectivity Test

  ```
  # Test connectivity to the target device (10.192.1.2)
  ping 10.192.1.2
  ```

- Adjust network buffer (improve communication performance):

  ```
  echo -e "net.core.wmem_max=12582912\nnet.core.rmem_max=12582912" | sudo tee -a /etc/sysctl.conf
  sudo sysctl -p
  ```

#### 3. Configure ros1_bridger Connection Parameters

- Set the ros1_bridger communication address:

  ```
  export MROS_IP_LIST=10.192.1.x
  ```

#### 4. Launch ros1_bridger

​	Select the corresponding commands based on the local device architecture:

- ### x86_64 Architecture

  ```
  # Load ROS environment
  source /opt/ros/noetic/setup.bash
  
  # Load ros1_bridger installation environment
  source amd64/noetic/install/setup.bash
  
  # Launch the bridge node
  roslaunch mrosbridger mrosbridger.launch
  ```

- ### aarch64 Architecture

  ```
  # Load ROS environment
  source /opt/ros/noetic/setup.bash
  
  # Load ros1_bridger installation environment
  source aarch64/noetic/install/setup.bash
  
  # Launch the bridge node
  roslaunch mrosbridger mrosbridger.launch
  ```

#### 5. Verify if the Bridge Works

- Check if the node starts normally:

  ```
  # Open a new terminal and view active nodes
  rosnode list
  ```

- Test topic communication:

  ```
  # View the list of bridged topics
  rostopic list
  ```
