robot(name: "Prototype", width: 360.0, depth: 360.0, height: 300.0, weight: 5.4431084, units: :metric) do
  define(:drive_wheel_type, :mecanum) # friction/"drag" modelling; :linear, :mecanum, :omniwheel
  define(:drive_wheel_diameter, 90.0)
  define(:drive_wheel_depth, 25.4)
  define(:drive_motor_gear_ratio, 20.0 / 1.0)
  define(:drive_motor_ticks_per_revolution, 28)

  define(:odometry_wheel_type, :omniwheel) # only type, other values ignored.
  define(:odometry_wheel_diameter, 90.0)
  define(:odometry_wheel_depth, 15.0)

  add(:drive_front_left,  :drive_wheel, x: -300, y: -300, angle: 45.0,  direction: :forward)
  add(:drive_front_right, :drive_wheel, x: 300,  y: -300, angle: -45.0, direction: :reverse)
  add(:drive_back_left,   :drive_wheel, x: -300, y: 300,  angle: -45.0, direction: :forward)
  add(:drive_back_right,  :drive_wheel, x: 300,  y: 300,  angle: 45.0,  direction: :reverse)

  add(:odopod_forward, :odometry_wheel, x: 0, y: 300,  angle: 0.0,  direction: :forward)
  add(:odopod_lateral, :odometry_wheel, x: 0, y: -300, angle: 90.0, direction: :forward)

  add(:imu, :imu, x: 0, y: 0, z: 0)
end