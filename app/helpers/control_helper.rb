module ControlHelper
  class Control < ActiveRecord::Base
    def self.method_missing(method_name, *args, &block)
      if method_name[-1] == '='
        handle_set_control method_name.to_s.delete("="), args.first
      else
        handle_get_control method_name
      end
    end

    private

    def self.handle_get_control(name)
      if control = Control.find_by(key: name.to_s)
        control.value unless control.value.empty?
      else
        nil
      end
    end

    def self.handle_set_control(name, value)
      if control = Control.find_or_create_by(key: name.to_s)
        control if control.update(value: value.to_s)
      end
    end
  end
