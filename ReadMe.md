UpWords
=======

# Synopsis
```
git clone https://github.com/ingydotnet/UpWords
cd UpWords
make test
```

# Description

This repo has a trival module called UpWords, written in 3 languages: Perl, Python and Bash.

The tests are written in TestML.

The point is to show how clearly the tests describe what the module does.

Just run `make test` and it should run the tests in each language.
Note that it uses TAP for Perl and Bash, and unittest for Python.

TestML supports many programming languages.
It intends to support all modern programming languages, and all the most popular test frameworks within them.
It mixes perfectly with any other tests (non-TestML) that you already have or want to write.
The point is to have tests that are almost data, with one or more assertions on that data.
