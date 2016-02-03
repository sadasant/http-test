# CloudWalk's simple HTTP application

Our goal at [CloudWalk][1] is to provide you with the
necessary tools to build Point Of Sales (POS) applications
in an easy and innovative way. For that purpose we've built
many tools to develop your POS projects with Ruby.

In this repository, we provide you with an example or proof
of concept of a simple HTTP application that uses our Ruby
Framework for POS terminals.

You're welcome to try it, use it or modify it as your own,
it is our honor :bowtie:

## Index

- [Index](https://gist.github.com/sadasant/2c115b68070cec863afa#index)
- [What do I have here?](https://gist.github.com/sadasant/2c115b68070cec863afa#what-do-i-have-here)
- [How do I use this?](https://gist.github.com/sadasant/2c115b68070cec863afa#how-do-i-use-this)
- [Prepare the HTTP application](https://gist.github.com/sadasant/2c115b68070cec863afa#prepare-the-HTTP-application)
- [Running the HTTP application](https://gist.github.com/sadasant/2c115b68070cec863afa#running-the-HTTP-application)
- [Testing](https://gist.github.com/sadasant/2c115b68070cec863afa#testing)
- [I would like to contribute](https://gist.github.com/sadasant/2c115b68070cec863afa#i-would-like-to-contribute)

## What do I have here?

This repository contains a set of files and folder that are
of common use when developing using our [CloudWalk Framework API][3].
The structure goes as follows:

- A `lib` directory with a Ruby `main.rb` application that uses our [API][3].
- A `test` directory with example test cases. Tests are divided by _integration_ tests and _unit_ tests.
- A `Gemfile` and a `Gemfile.lock` for the gems we need to make
  any application work.
- And a `Rakefile`, with the settings by which the application will
  be built.

## How do I use this?

We encourage you to edit the files in the `lib` folder,
where the application's source code is located.

We also recommend trying changes to the `test` files.
Testing is good and no set of tests are perfect,
the best approach is to make tests not to verify features
but to attempt to break your application.
Please do all that you can to prevent your customers from
interacting with un-tested code.

A full tutorial on how to develop your first CloudWalk app
can be found here: <https://docs.cloudwalk.io/en/cli>,
if that's not enough for you, tight your seatbelt and dive
into [da_funk][2], the project behind our [CloudWalk Framework API][3]
(both links will lead you to the same place!).

## Prepare the HTTP application

You must have Ruby installed (Ruby 1.9.3 is OK!).
We recommend installing it with [rvm][4], with
the following commands:

    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    \curl -sSL https://get.rvm.io | bash -s stable

You must also have `rake` and `bundler`.
In case you don't have them already, you can run:

    gem install rake
    gem install bundler

Once you have them in your system, simply run:

    bundle install

**If you're in Windows, don't run bundle from the cygwin terminal.**
You don't want to do that. Believe us. Either use the Windows
Command Prompt to `cd` into your project folder
(most likely in `C:\cygwin\home\%USERNAME%\`), or
(while we work for a better solution) run:

    gem install gem-exefy
    gem exefy bundler

Finally you will need to install our [CLI][2], you can get it with:

    curl https://www.cloudwalk.io/cli/install.sh | bash

## Running the HTTP application

Run `rake` to build this application.
If everyting went well, proceed with:

- `cloudwalk emulate` to run the application in a graphical
  emulator in a separated window.
- Or `cloudwalk run` to run the application in text mode.

## Testing

You'll be able to test your application using the following commands:

- `rake test:unit` to execute unit tests.
- `rake test:integration` to execute integration tests.
- `rake test` to test everything.

## I would like to contribute

If you want to propose changes please follow the instructions:

1. Fork it under your github account!
2. Create your feature branch `git checkout -b my-new-feature`
3. Commit your changes `git commit -am 'Added some feature'`
4. Push to the branch `git push origin my-new-feature`
5. Create a new Pull Request!

## License

```
The MIT License (MIT)

Copyright (c) 2015 CloudWalk, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

[1]: https://www.cloudwalk.io
[2]: https://www.cloudwalk.io/cli/
[3]: https://github.com/cloudwalkio/da_funk
[4]: https://rvm.io/
