require "crystal/system"
require "uname"

class OS
  VERSION = "0.2.1"

  property :config

  def self.config
    raise NotImplementedError
  end

  # true if on windows [and/or jruby]
  # false if on linux or cygwin on windows

  def self.windows?
    # Crystal does not support windows
    false
  end

  # true for linux, os x, cygwin
  def self.posix?
    # assume non windows is posix
    !self.windows?
  end

  # true for linux, false for windows, os x, cygwin
  def self.linux?
    !!(Uname.sysname =~ /Linux/)
  end

  def self.freebsd?
    !!(Uname.sysname =~ /FreeBSD/)
  end

  def self.iron_ruby?
    false
  end

  def self.bits
    sizeof(Pointer(Int32))*8
  end

  def self.java?
    false
  end

  def self.ruby_bin
    raise NotImplementedError
  end

  def self.mac?
    raise NotImplementedError
  end

  def self.osx?
    mac?
  end

  def self.x?
    mac?
  end

  # amount of memory the current process "is using", in RAM
  # (doesn't include any swap memory that it may be using, just that in actual RAM)
  # raises 'unknown' on jruby currently
  def self.rss_bytes
    if OS.posix?
      `ps -o rss= -p #{Process.pid}`.to_i # in kilobytes
    else
      raise "unknown rss for this platform"
    end
  end

  class Underlying
    def self.bsd?
      OS.osx?
    end

    def self.windows?
      ENV["OS"] == "Windows_NT"
    end

    def self.linux?
      OS.host_os =~ /linux/ ? true : false
    end

    def self.docker?
      system("grep -q docker /proc/self/cgroup") if OS.linux?
    end
  end

  def self.cygwin?
    false
  end

  def self.dev_null # File::NULL in 1.9.3+
    @@dev_null ||= begin
      if OS.windows?
        "NUL"
      else
        "/dev/null"
      end
    end
  end

  # provides easy way to see the relevant config entries
  def self.report
    raise NotImplementedError
  end

  def self.cpu_count
    @@cpu_count ||= System.cpu_count
  end

  def self.open_file_command
    if OS.doze? || OS.cygwin?
      "start"
    elsif OS.mac?
      "open"
    else
      # linux...what about cygwin?
      "xdg-open"
    end
  end

  def self.app_config_path(name)
    raise NotImplementedError
  end

  def self.jruby?
    java?
  end

  def self.doze?
    windows?
  end

  def self.host_cpu
    Uname.machine
  end

  def self.host
    raise NotImplementedError
  end

  def self.host_os
    raise NotImplementedError
  end

  def self.hwprefs_available?
    `which hwprefs` != ""
  end
end
