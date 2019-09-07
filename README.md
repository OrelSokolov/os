# os

Crystal port for [OS gem](https://github.com/rdp/os).
Something may not work

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     os:
       github: orelsokolov/os
   ```

2. Run `shards install`

## Usage

```crystal
require "os"
```

## Development

Make PR if you know how to fix something

| Feature                                         | Support |
|-------------------------------------------------|---------|
|  def self.config                                | |
|  def self.windows?                              | YES |
|  def self.posix?                                | |
|  def self.linux?                                | |
|  def self.freebsd?                              | |
|  def self.iron_ruby?                            | |
|  def self.bits                                  | YES |
|  def self.java?                                 | YES |
|  def self.ruby_bin                              | |
|  def self.mac?                                  | |
|  def self.osx?                                  | |
|  def self.x?                                    | |
|  def self.rss_bytes                             | |
|  def Underlying::bsd?                           | |
|  def Underlying::windows?                       | |
|  def Underlying::linux?                         | |
|  def Underlying::docker?                        | |
|  def self.cygwin?                               | |
|  def self.dev_null                              | YES |
|  def self.report                                | |
|  def self.cpu_count                             | YES |
|  def self.open_file_command                     | |
|  def self.app_config_path(name)                 | |
|  def self.jruby?                                | |
|  def self.doze?                                 | |
|  def host_cpu                                   | |
|  def host                                       | |
|  def host_os                                    | |
|  def self.hwprefs_available?                    | |

## Contributing

1. Fork it (<https://github.com/your-github-user/os/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Oleg Orlov](https://github.com/your-github-user) - creator and maintainer
