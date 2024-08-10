module OdometrySimulator
  class Robot
    def initialize(name:, width: 360.0, depth: 360.0, height: 300.0, weight: 5.4431084, units: :metric)
      @name = name.to_s

      define(width: width)
      define(depth: depth)
      define(height: height)
      define(weight: weight)
      define(units: units)

      @properties = {
        drive_wheel_type: :mecanum,
        drive_wheel_diameter: 90.0,
        drive_wheel_depth: 15.0,
        drive_motor_gear_ratio: 20.0 / 1.0,
        drive_motor_ticks_per_revolution: 28,

        odometry_wheel_type: :omniwheel,
        odometry_wheel_diameter: 90.0,
        odometry_wheel_depth: 15.0,
      }

      @hardware = []
    end

    def define(property, value)
      case property
      when :drive_wheel_type
        raise "Invalid #{property}. Expected: :linear, :omniwheel, or :mecanum. Got: #{value.inspect}" unless [:linear, :omniwheel, :mecanum].includes?(value)

        @properties[property] = value

      when :odometry_wheel_type
        raise "Invalid #{property}. Expected: :omniwheel. Got: #{wheel_type.inspect}" unless value == :omniwheel

        @properties[property] = value

      when :width, :depth, :height, :weight,
           :drive_wheel_diameter, :drive_wheel_depth, :drive_motor_gear_ratio, :drive_motor_ticks_per_revolution,
           :odometry_wheel_diameter, :odometry_wheel_depth
        puts property

        raise "Invalid value for #{property}. Expected: a numeric. Got: #{value.class}" unless value.is_a?(Numeric)
        raise "Invalid value for #{property}. Expected: a positive number." unless value.positive?

        @properties[property] = value

      when :units
        raise "Invalid drive wheel type. Expected: :linear, :omniwheel, or :mecanum. Got: #{value.inspect}" unless [:linear, :omniwheel, :mecanum].includes?(value)

      else
        raise "Unknown property: #{property.inspect}"
      end
    end

    def add(name, type, x: 0.0, y: 0.0, z: 0.0, angle: 0.0, direction: :forward)
    end
  end
end
