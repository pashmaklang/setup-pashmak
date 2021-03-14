# Pashmak programming language for GitHub Actions
This project is in progress, do not use it now.

### Usage
Create a file in `.github/workflows/my-workflow.yml` and write this content:

```yml
name: something

on: [push, pull_request]

jobs:
  my_job:
    runs-on: ${{ matrix.os }}

    strategy:
      fail-fast: false
      matrix:
        os: [ubuntu-18.04, ubuntu-20.04, macos-latest, windows-latest]

    steps:

    # ...

    - name: Set up Pashmak
      uses: pashmaklang/setup-pashmak@master
      with:
        pashmak-version: 0.8.1

    - name: Run the scripts
      run: |
        pashmak my-program.pashm

    # ...

    name: My Workflow
```

You should set `pashmak-version` argument to the version of Pashmak that you want to install:

```yml
      with:
        pashmak-version: <version>
```

### Supported runners
- `ubuntu-18.04`
- `ubuntu-20.04`
- `macos-latest`
- `windows-latest`
