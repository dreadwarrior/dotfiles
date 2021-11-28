% maven_verify_multi_module(1) dreadlabs.de | dotfiles
%
% November 2021

# NAME

**maven_verify_multi_module** - Focused test execution of specific modules in
                                a Maven multi-module project.

# SYNOPSIS

**`maven_verify_multi_module`** \[`-g` (`compile`|`install`)]
                                \[`-s`]
                                \[`-h`] _target-module(s)_

# DESCRIPTION

Running tests on a (complex) Maven multi-module project for a **specifc**
target module can be time consuming. This script helps to 'compile' or
'install' the dependencies for that target module and runs the test of
that target module afterwards.

This helper requires either a local Maven wrapper (mvnw) or a globally 
installed Maven executable.

# OPTIONS

`-g` (`compile`|`install`), `--dependencies-goal=`\(`compile`|`install`\)

:   Whether to execute the 'compile' or 'install' goal for the dependencies.
    (defaults to "compile")

`-s`, `--skip-dependencies-tests`, `--no-skip-dependencies-tests`

:   Whether to skip tests on dependencies build phase or not. (defaults to
    "false")

`-h`, `--help`

:   Prints help

_target-module(s)_

:   The target module(s) for which the tests should be run for.
    Comma-separated if multiple modules should be targeted.

# EXIT STATUS

0

:   successful execution

1

:   error while parsing command line arguments

64

:   no valid Maven executable found

# EXAMPLES

If the multi-module project requires to install the dependencies, use the
**`-g`** argument with the value set to "install":

    $ maven_verify_multi_module -g install my-module-name

To skip running tests of the target module(s) dependencies use the **`-s`**
flag:

    $ maven_verify_multi_module -s my-module-name


To run **MVVM** for multiple target modules, use a comma-separated list of
module names:

    $ maven_verify_multi_module mod1,mod2

# SEE ALSO

mvn(1)

