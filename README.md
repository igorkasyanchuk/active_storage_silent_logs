# Active Storage silent logger

Do you like logs like:

```log
Started GET "/rails/active_storage/disk/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaDExUkhSelFuaHpNbVJyV1dsNFVsaGpaMXBTYVV0YWNGUUdPZ1pGVkE9PSIsImV4cCI6IjIwMTgtMDgtMjlUMTQ6MzA6MjAuMjE3WiIsInB1ciI6ImJsb2Jfa2V5In19--96a1e9bc562decfc1b9c22ebde2e57029ed5ea20/image.png?content_type=image%2Fpng&disposition=inline%3B+filename%3D%22image.png%22%3B+filename%2A%3DUTF-8%27%27image.png" for 192.168.223.1 at 2018-08-29 10:25:48 -0400
Processing by ActiveStorage::DiskController#show as PNG
  Parameters: {"content_type"=>"image/png", "disposition"=>"inline; filename=\"image.png\"; filename*=UTF-8''image.png", "encoded_key"=>"eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaDExUkhSelFuaHpNbVJyV1dsNFVsaGpaMXBTYVV0YWNGUUdPZ1pGVkE9PSIsImV4cCI6IjIwMTgtMDgtMjlUMTQ6MzA6MjAuMjE3WiIsInB1ciI6ImJsb2Jfa2V5In19--96a1e9bc562decfc1b9c22ebde2e57029ed5ea20", "filename"=>"image"}
```

I think no. It looks like a garbage. 

Imagine you have 1000 images to show! How long you need to scroll to see log of main request? 

So if you want this gem can hide such logs for you. Very useful for development.

## Usage

Just add gem into `Gemfile` in Rails app.

## Installation


```ruby
gem 'active_storage_silent_logs', group: [:development, :test]
```

And then execute:
```bash
$ bundle
```

## TODO
* verify with other storages (s3 and other cloud services)
* can we disable puma logger?

## Contributing
You are welcome to contribute and help with testing.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
