# mimo-cookbook

Chef cookbook for [Mimo][1].

## Supported Platforms

* Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mimo']['repository']</tt></td>
    <td>String</td>
    <td>Repository to pull from</td>
    <td><tt>https://github.com/shutterfly/Mimo.git</tt></td>
  </tr>
  <tr>
    <td><tt>['mimo']['revision']</tt></td>
    <td>String</td>
    <td>Repository ref to use</td>
    <td><tt>master</tt></td>
  </tr>
  <tr>
    <td><tt>['mimo']['path']</tt></td>
    <td>String</td>
    <td>Installation path</td>
    <td><tt>/opt/mimo</tt></td>
  </tr>
  <tr>
    <td><tt>['mimo']['use_nodejs']</tt></td>
    <td>Boolean</td>
    <td>Use the `nodejs` cookbook for NodeJS/IO.js installation</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### mimo::default

Include `mimo` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[mimo::default]"
  ]
}
```

## License and Authors

- Author:: Graham Weldon <graham.weldon@rakuten.com>

```text
Copyright:: 2015 Rakuten, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[1]: https://github.com/shutterfly/Mimo
