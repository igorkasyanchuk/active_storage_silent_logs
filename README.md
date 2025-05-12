# Active Storage silent logger

[!["Buy Me A Coffee"](https://github.com/igorkasyanchuk/get-smart/blob/main/docs/snapshot-bmc-button-small.png?raw=true)](https://buymeacoffee.com/igorkasyanchuk)

The idea of this gem is to hide as much as possible Active Storage logs from console so you can see only important information and requests. So ...

Do you like logs like:

```log
Started GET "/rails/active_storage/disk/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaDExUkhSelFuaHpNbVJyV1dsNFVsaGpaMXBTYVV0YWNGUUdPZ1pGVkE9PSIsImV4cCI6IjIwMTgtMDgtMjlUMTQ6MzA6MjAuMjE3WiIsInB1ciI6ImJsb2Jfa2V5In19--96a1e9bc562decfc1b9c22ebde2e57029ed5ea20/image.png?content_type=image%2Fpng&disposition=inline%3B+filename%3D%22image.png%22%3B+filename%2A%3DUTF-8%27%27image.png" for 192.168.223.1 at 2018-08-29 10:25:48 -0400
Processing by ActiveStorage::DiskController#show as PNG
  Parameters: {"content_type"=>"image/png", "disposition"=>"inline; filename=\"image.png\"; filename*=UTF-8''image.png", "encoded_key"=>"eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaDExUkhSelFuaHpNbVJyV1dsNFVsaGpaMXBTYVV0YWNGUUdPZ1pGVkE9PSIsImV4cCI6IjIwMTgtMDgtMjlUMTQ6MzA6MjAuMjE3WiIsInB1ciI6ImJsb2Jfa2V5In19--96a1e9bc562decfc1b9c22ebde2e57029ed5ea20", "filename"=>"image"}
```

What we don't like in console it looks like:

[![Sample](https://raw.githubusercontent.com/igorkasyanchuk/active_storage_silent_logs/master/docs/log.png)](https://raw.githubusercontent.com/igorkasyanchuk/active_storage_silent_logs/master/docs/log.png)

So do you like it? I think no. It looks like a garbage. 

Imagine you have 1000 images to show! How long you need to scroll to see log of main request? 

So if you want this gem can hide such logs for you. Very useful for development.

**Since Rails logger is not thread-safe this gem doesn't fix all messages, since one thread could impact another. If you want to hide - run puma with only one thread (open `puma.rb` and put `threads_count = ENV.fetch("RAILS_MAX_THREADS") { 1 }`).**

## Usage

Just add gem into `Gemfile` in Rails app.

## Installation


```ruby
gem 'active_storage_silent_logs', group: :development
```

And then execute:
```bash
$ bundle
```

## TODO
* verify with other storages (s3 and other cloud services)
* can we disable puma logger?
* is it possible to fix issue with thread-safe with logger?

## Contributing

You are welcome to contribute and help with testing.

To play with gem open `test/dummy` and run `rake db:migrate` + `rails s -b 0.0.0.0 puma`.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=active_storage_silent_logs)

[!["Buy Me A Coffee"](https://github.com/igorkasyanchuk/get-smart/blob/main/docs/snapshot-bmc-button.png?raw=true)](https://buymeacoffee.com/igorkasyanchuk)
