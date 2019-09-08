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

| Feature                                     | Support |
|---------------------------------------------|---------|
|  self.windows?                              | YES |
|  self.cpu_count                             | YES |
|  self.bits                                  | YES |
|  self.java?                                 | YES |
|  self.dev_null                              | YES |
|  self.config                                | |
|  self.posix?                                | YES |
|  self.linux?                                | |
|  self.freebsd?                              | |
|  self.iron_ruby?                            | |
|  self.ruby_bin                              | |
|  self.mac?                                  | |
|  self.osx?                                  | |
|  self.x?                                    | |
|  self.rss_bytes                             | YES |
|  self.cygwin?                               | |
|  self.report                                | |
|  self.open_file_command                     | |
|  self.app_config_path(name)                 | |
|  self.jruby?                                | YES |
|  self.doze?                                 | YES |
|  self.host_cpu                              | YES |
|  self.host                                  | |
|  self.host_os                               | |
|  hwprefs_available?                         | |
|  Underlying::bsd?                           | |
|  Underlying::windows?                       | |
|  Underlying::linux?                         | |
|  Underlying::docker?                        | |

## Contributing

1. Fork it (<https://github.com/your-github-user/os/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Oleg Orlov](https://github.com/your-github-user) - creator and maintainer
