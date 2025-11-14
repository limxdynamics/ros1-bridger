
"use strict";

let servoJ = require('./servoJ.js');
let waist_cmd = require('./waist_cmd.js');
let arm_servo = require('./arm_servo.js');
let arm_status = require('./arm_status.js');

module.exports = {
  servoJ: servoJ,
  waist_cmd: waist_cmd,
  arm_servo: arm_servo,
  arm_status: arm_status,
};
