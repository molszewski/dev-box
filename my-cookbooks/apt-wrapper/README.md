apt-wrapper Cookbook
====================

This cookbooks wraps around apt cookbook and adds apt-add-ppa recipe which setups custom PPAs.

Requirements
------------
None

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['apt']['ppa']</tt></td>
    <td>Hash</td>
    <td>Hash containing URI and part of public key required by apt_repository method, e.g.
       <tt>node.default['apt']['ppa'] = {
          'git-core' => {
                  'uri' => 'http://ppa.launchpad.net/git-core/ppa/ubuntu/',
                  'key' => 'E1DF1F24'
           }
       }</tt>
    </td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
Just include `apt-wrapper` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apt-wrapper]"
  ]
}
```

License and Authors
-------------------
Authors: M.Olszewski
