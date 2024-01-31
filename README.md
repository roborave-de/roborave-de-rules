Moved to 
- [RoboRAVE Germany on Github](https://github.com/roborave-de/roborave-de-rules)
- [RoboRAVE Germany on Gitlab](https://gitlab.com/roborave-de/roborave-de-rules)

# RoboRAVE Germany Rules

These are the rules of [RoboRAVE Germany](https://roborave.de). The rules are
translated from the origiinal rules of
[RoboRAVE International](https://www.roboraveinternational.org).


# PDF Generation

After cloning change into this repositories directory, create a `build`
directory, generate a build configuration with `cmake` and use `make` to
generate the PDFs.

These are the commands:

```
cd roborave-de-rules
mkdir build
cmake ..
make all
```

# Dependencies

- git
- cmake
- xelatex

