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
The script will store the downloaded SDK in `/renpy-${sdk_version}-sdk`, and you can configure the cache yourself

## Thank
1. [ProjectAliceDev/renpy-lint-action](https://github.com/ProjectAliceDev/renpy-lint-action) Provides basic ideas