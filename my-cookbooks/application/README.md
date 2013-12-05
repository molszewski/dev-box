application Cookbook
====================
Main application cookbook


Requirements
------------
#### packages
- `apt-wrapper` - for adding custom PPA repositories
- `git` - for installing GIT
- `java` - for installing JDK

Attributes
----------
None yet.

Usage
-----
#### application::default

e.g.
Just include `application` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[application]"
  ]
}
```

License and Authors
-------------------
Authors: M.Olszewski
