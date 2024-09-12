# Python Module Example

Example code for creating a python module hosted at CloudSmith that works with standard tooling.


## Notes

The name of the pacakge that you use with `pip install <pacakge>` is set in 
the `pyproject.toml` file, and is not necessary the name of the project 
(but it's much less confusing if they're the same).

The names of modules that you import in python with `import <module>` are the 
names of the subdirectories created under the `/src` directory.


# Using

To use the module after it has beem built and deployed

Run:

    pip install python-module-example --index-url https://dl.cloudsmith.io/BjdoQ5YRhcFsn87a/zeroflucs-ijne/labs/python/simple/

    echo "from simpleexample import basic\nprint(basic.salutation('world'))" | python -


```
  ____            ___ _
 |_  /___ _ _ ___| __| |_  _ __ ___       ZeroFlucs
  / // -_) '_/ _ \ _|| | || / _(_-<       Pricing Technology
 /___\___|_| \___/_| |_|\_,_\__/__/       (c) 2024-Present
```
