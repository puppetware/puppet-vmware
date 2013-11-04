Puppet Module - VMware Fusion
=============================

Puppet module to install VMware Fusion.

Supported Platforms:

- Darwin

Usage
-----

Install VMware Fusion:

```
class {'vmware_fusion':
  version => '5.0.3',
  build   => '1040386',
  source  => 'http://localhost/downloads/VMware-Fusion-5.0.3-1040386-light.dmg',
  key     => 'XXXX-XXXX-XXXX-XXXX-XXXX',
}
```

Attributes
----------

```
class {'vmware_fusion':
  version            => # Version number of VMware Fusion.
  build              => # Corresponding build number for VMware Fusion.
  source             => # URL to obtain the VMware Fusion dmg. This is **required** and
                        # will not automagically download the dmg from VMware.
  key                => # Your (volume) license key for VMware Fusion.
  companyName        => # Your company name. Will be used with VMware's license tool.
  skipEula           => # Skip showing the EULA modal when VMware Fusion is first run.
  skipAntivirus      => # Skip showing Antivirus modal when VMware Fusion is first run.
  skipRegistration   => # Skip showing the Registration modal when VMware Fusion is first run.
  hideLicense        => # Skip showing the License key modal when VMware Fusion is first run.
  skipDataCollection => # Skip showing the Data Collection modal when VMware Fusion is first run.
}
```

MIT License
-----------

Copyright 2013 Ryan Skoblenick

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.