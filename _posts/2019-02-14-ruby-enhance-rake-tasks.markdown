---
layout: post
title:  "…how to add functionality to existing rake tasks."
date:   2019-02-14 12:00:00 +0100
share_text: Today I learned how to add functionality to existing rake tasks.
category: ruby
---
Sometimes you just want to add some extra functionality to some existing rake task.

So image having these rake tasks defined:

```ruby
namespace :do do
  task :foo do
    puts "foo"
  end

  task :after do
    puts "after"
  end

  task :before do
    puts "before"
  end
end
```

We can prepend the `do:before` task to the `do:foo` task like this:

```ruby
Rake::Task["do:foo"].enhance ["do:before"]

# output would be:
# before
# foo
```

And let something run after a task like this:

```ruby
Rake::Task["do:foo"].enhance do
  Rake::Task["do:after"].invoke
end

# output would be:
# foo
# after
```

Really neat if you want to add some more stuff, to existing rails tasks for example. I got that idea [from here][link], btw.

[link]: https://www.dan-manges.com/blog/modifying-rake-tasks
