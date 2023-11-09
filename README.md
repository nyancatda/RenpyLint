# Ren'Py Lint
GitHub action script for linter testing the Ren'Py project

## Use
``` yarn
- name: Lint
  uses: nyancatda/RenpyLint@main
  with:
    sdk_version: '8.1.3'
```

## Available parameters
- `sdk_version` Ren'Py SDK version
- `project_path` Project folder path

## Cache
The script will store the downloaded SDK in `~/renpy-${sdk_version}-sdk`, and you can configure the cache yourself

Example
``` yml
- name: Restore Renpy SDK Cache
  id: restore-cache
  uses: actions/cache@v3
  with:
    path: /home/runner/work/_temp/_github_home/renpy-8.1.3-sdk
    key: renpy-8.1.3-sdk

- name: Lint
  id: lint
  uses: nyancatda/RenpyLint@main
  with:
    sdk_version: '8.1.3'
```

## Thank
1. [ProjectAliceDev/renpy-lint-action](https://github.com/ProjectAliceDev/renpy-lint-action) Provides basic ideas