# Puppet module: ruby

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

This is a Puppet module for ruby
It provides only package installation and management

Official git repository: http://github.com/nholuongut/puppet-ruby

Module development sponsored by [AllOver.IO](http://www.allover.io)

This module requires the presence of nholuongut Puppi module in your modulepath.

## USAGE - Basic management

* Install ruby with default settings

        class { 'ruby': }

* Install a specific version of ruby package

        class { 'ruby':
          version => '1.0.1',
        }

* Install ruby compiling from uptream source. You have to provide a correct version (as available on ftp://ftp.ruby-lang.org/pub/ruby/ ). Note that this will install various prerequite packages and will take some time. Installs ruby to /usr/local/bin

        class { 'ruby':
          version             => '1.9.3-p392',
          compile_from_source => true,
        }


* Remove ruby resources

        class { 'ruby':
          absent => true
        }

* Module dry-run: Do not make any change on *all* the resources provided by the module

        class { 'ruby':
          noops => true
        }

* Automatically include a custom subclass

        class { 'ruby':
          my_class => 'nholuongut::my_ruby',
        }

# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: Nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟
